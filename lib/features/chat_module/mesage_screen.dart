import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_strings.dart';
import 'package:ngo_app/features/chat_module/widget/bottomsheet_content.dart';
import 'package:ngo_app/features/chat_module/widget/chat_appbar.dart';
import 'package:ngo_app/features/chat_module/widget/custom_bottom_sheet.dart';
import 'package:ngo_app/features/chat_module/widget/custom_popup.dart';
import 'package:ngo_app/features/chat_module/widget/message_box.dart';
import 'package:ngo_app/features/chat_module/widget/message_input_bar.dart';

import 'model/chat_model.dart';

@RoutePage()
class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  int? _editingIndex;
  final TextEditingController _messageController = TextEditingController();
  final List<ChatMessage> _messages = [
    ChatMessage(message: "K, I'm on my way", time: "07:22 PM", sent: true),
    ChatMessage(
        message: "Okay, let me know when you arrive",
        time: "07:23 PM",
        sent: false),
    ChatMessage(message: "Sure", time: "07:24 PM", sent: true),
  ];

  final List<GlobalKey> _messageKeys = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.whiteColor,
      appBar: ChatAppbar(
        profileName: "Faraz",
        profileLastSeen: "Active now",
        isOnline: true,
      ),
      bottomNavigationBar: MessageInputBar(
        onSendTap: _sendMessage,
        messageController: _messageController,
        onAttachTap: () {
          customBottomSheet(context,
              widget: BottomSheetContent(
                onCameraClick: () => _openCamera(),
              ));
        },
      ),
      body: _bodyUI(),
    );
  }

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isNotEmpty) {
      if (_editingIndex != null) {
        setState(() {
          _messages[_editingIndex!].message = text;
        });
        _editingIndex = null;
      } else {
        final newMessage = ChatMessage(
          message: text,
          time: _getCurrentTime(),
          sent: true,
        );
        setState(() {
          _messages.add(newMessage);
          _messageKeys
              .add(GlobalKey()); // Add a new GlobalKey for the new message
        });
      }
      _messageController.clear(); // Clear the text field
    }
  }

  String _getCurrentTime() {
    final now = DateTime.now();
    final hour = now.hour % 12;
    final suffix = now.hour >= 12 ? 'PM' : 'AM';
    final formattedHour = hour == 0 ? 12 : hour;
    return "${formattedHour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')} $suffix";
  }

  Widget _bodyUI() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final ChatMessage message = _messages[index];
          if (_messageKeys.length <= index) {
            _messageKeys.add(GlobalKey());
          }
          return Align(
            alignment:
                message.sent ? Alignment.centerRight : Alignment.centerLeft,
            child: GestureDetector(
              key: _messageKeys[index],
              onTap: () {
                _showPopupMenu(context, index);
              },
              child: MessageBox(
                message: message.message,
                receivedTime: message.time,
                messageSent: message.sent,
              ),
            ),
          );
        },
        itemCount: _messages.length,
      ),
    );
  }

  void _showPopupMenu(BuildContext context, int index) async {
    final RenderBox renderBox =
        _messageKeys[index].currentContext?.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    final message = _messages[index];

    double leftPosition = position.dx;
    if (message.sent) {
      leftPosition = position.dx + renderBox.size.width;
    }

    List<PopupMenuEntry<String>> menuItems = [
      PopupMenuItem<String>(
        value: 'pinned',
        child: CustomTextWidget(text: AppStrings.pinned),
      ),
    ];
    final currentTime = DateTime.now();
    final messageAge = currentTime.difference(message.sentTime);
    if (message.sent && messageAge.inMinutes <= 10) {
      menuItems.insert(
        0,
        PopupMenuItem<String>(
          value: 'edit',
          child: CustomTextWidget(text: AppStrings.edit),
        ),
      );
      menuItems.insert(
          1,
          PopupMenuItem<String>(
            value: 'delete',
            child: CustomTextWidget(text: AppStrings.delete),
          ));
    }

    showMenu(
      color: AppColors.whiteColor,
      context: context,
      position: RelativeRect.fromLTRB(
        leftPosition,
        position.dy + renderBox.size.height,
        position.dx,
        position.dy + renderBox.size.height,
      ),
      items: menuItems,
    ).then((value) {
      if (value != null) {
        if (value == 'edit') {
          setState(() {
            _editingIndex = index;
            _messageController.text = message.message;
          });
        } else if (value == 'delete') {
          showConfirmationDialog(
            context,
            title: AppStrings.deleteMessage,
            content: AppStrings.confirmationDeleteMessage,
            confirmButtonText: AppStrings.delete,
            cancelButtonText: AppStrings.cancel,
            onConfirm: () {
              setState(() {
                _messages.removeAt(index);
              });
            },
          );
        } else if (value == 'pinned') {
          print("Pinned message...");
        }
      }
    });
  }

  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future<void> _openCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = File(image.path); // Save the image file
      });
      print('Image picked: ${_image?.path}');
    }
  }
}
