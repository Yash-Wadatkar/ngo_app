import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

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
      margin: EdgeInsets.symmetric(
          horizontal: AppSizes.wSize10, vertical: AppSizes.hSize8),
      padding: EdgeInsets.all(AppSizes.wSize10),
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
