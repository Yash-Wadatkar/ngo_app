import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'custom_image.dart';

class CommonProfilePhoto extends StatelessWidget {
  final String? imagePath;
  final double width;
  final double height;
  final Color backgroundColor;
  final bool isOnline;

  const CommonProfilePhoto({
    super.key,
    this.imagePath,
    this.width = 30.0,
    this.height = 30.0,
    this.backgroundColor = Colors.grey,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: width / 2,
              backgroundColor: backgroundColor,
              child: ClipOval(
                child: imagePath != null && imagePath!.isNotEmpty
                    ? CustomImage(
                        imagePath: imagePath!,
                        width: width,
                        height: height,
                        fit: BoxFit.cover,
                      )
                    : Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.white,
                      ),
              ),
            ),
            if (isOnline)
              Positioned(
                bottom: 0,
                right: 2,
                child: CircleAvatar(
                    radius: 4, backgroundColor: AppColors.onlineColor),
              ),
          ],
        ),
      ],
    );
  }
}
