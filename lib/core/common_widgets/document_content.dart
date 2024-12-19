import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';

class DocumentContent extends StatelessWidget {
  final IconData icon;
  final Widget widget;

  const DocumentContent({
    super.key,
    required this.icon,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(),
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Icon(
              icon,
              color: AppColors.whiteColor,
              size: 30, // Adjust icon size as necessary
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: widget, // Use the passed widget
            ),
          ),
        ],
      ),
    );
  }
}
