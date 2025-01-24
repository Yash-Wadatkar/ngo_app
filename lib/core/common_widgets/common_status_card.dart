import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';

class CommonStatusCard extends StatelessWidget {
  final String title;
  final Color cardColor;
  final Color textColor;

  CommonStatusCard({
    super.key,
    required this.title,
    this.cardColor = Colors.white,
    this.textColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          spacing: 5,
          children: [
            CircleAvatar(
              radius: 2,
              backgroundColor: textColor,
            ),
            CustomTextWidget(
              text: title,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
