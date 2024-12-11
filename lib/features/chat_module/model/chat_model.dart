import 'dart:io';

class ChatMessage {
  String message;
  String time;
  bool sent;
  DateTime sentTime;
  File? imageFile; // Add this property
  ChatMessage({
    required this.message,
    required this.time,
    required this.sent,
    this.imageFile,
  }) : sentTime = DateTime.now();
}
