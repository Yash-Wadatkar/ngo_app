import 'dart:io';

class ChatMessage {
  String message;
  String? replyMessage;
  String time;
  bool sent;
  bool? isMessageSelected; // To track if the message is currently selected
  bool
      isAlreadyMessageSelected; // To track if the message has been selected before
  DateTime sentTime;
  File? imageFile; // To store the image file if the message is an image

  // Constructor with named parameters
  ChatMessage({
    required this.message,
    required this.time,
    this.replyMessage,
    required this.sent,
    this.imageFile,
    this.isMessageSelected = false, // Default to false
    required this.isAlreadyMessageSelected, // This can be used to track if it was selected earlier
  }) : sentTime = DateTime
            .now(); // Automatically set sentTime to the current date and time
}
