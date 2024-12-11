import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../../../core/common_widgets/custom_input_field_widget.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_strings.dart';

class MessageInputBar extends StatelessWidget {
  final VoidCallback? onAttachTap;
  final VoidCallback? onSendTap;
  final VoidCallback? onMicTap;
  final TextEditingController messageController;

  const MessageInputBar({
    super.key,
    this.onAttachTap,
    this.onSendTap,
    this.onMicTap,
    required this.messageController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: GestureDetector(
              onTap: onAttachTap,
              child: Icon(
                FontAwesomeIcons.paperclip,
                color: AppColors.iconColor,
                size: AppSizes.hSize20,
              ),
            ),
          ),
          AppSizes.width10,
          Expanded(
            child: CustomInputFieldWidget(
              name: AppStrings.writeYourMessage,
              hintText: AppStrings.writeYourMessage,
              controller: messageController,
            ),
          ),
          AppSizes.width10,
          Expanded(
            flex: 0,
            child: GestureDetector(
              onTap: onSendTap,
              child: CircleAvatar(
                radius: AppSizes.hSize30,
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  FontAwesomeIcons.solidPaperPlane,
                  color: AppColors.whiteColor,
                  size: AppSizes.hSize20,
                ),
              ),
            ),
          ),
          AppSizes.width10,
          Expanded(
            flex: 0,
            child: GestureDetector(
              onTap: onMicTap,
              child: Icon(
                Icons.mic_none_sharp,
                size: AppSizes.hSize20,
                color: AppColors.iconColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
