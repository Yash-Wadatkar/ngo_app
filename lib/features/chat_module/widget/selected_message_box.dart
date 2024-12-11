import 'package:flutter/material.dart';

class SelectedMessageBox extends StatelessWidget {
  final String selectedMessage;
  final String replyMessage;
  final bool isSentByMe;
  final String time;

  const SelectedMessageBox({
    super.key,
    required this.selectedMessage,
    required this.replyMessage,
    required this.isSentByMe,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.grey[100], // Light background
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sender Label (e.g., "You")
          Text(
            isSentByMe ? "You" : "Sender",
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          // Selected Message
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Text(
              selectedMessage,
              style: const TextStyle(fontSize: 16.0, color: Colors.black87),
            ),
          ),
          const SizedBox(height: 8.0),
          // Reply Message
          Text(
            replyMessage,
            style: const TextStyle(fontSize: 16.0, color: Colors.black87),
          ),
          const SizedBox(height: 6.0),
          // Timestamp
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              time,
              style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
}
