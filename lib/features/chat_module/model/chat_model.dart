class ChatMessage {
  String message;
  String time;
  bool sent;
  DateTime sentTime;

  ChatMessage({
    required this.message,
    required this.time,
    required this.sent,
  }) : sentTime = DateTime.now();
}
