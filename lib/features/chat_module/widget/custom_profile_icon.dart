import 'package:flutter/material.dart';

import '../../../core/common_widgets/custom_image.dart';

class CustomProfileIcon extends StatelessWidget {
  final String? imagePath;
  final double size;
  final Color backgroundColor;

  const CustomProfileIcon({
    super.key,
    this.imagePath,
    this.size = 20.0,
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: size,
      child: ClipOval(
        child: imagePath != null && imagePath!.isNotEmpty
            ? CustomImage(
                imagePath: imagePath!,
                fit: BoxFit.cover,
              )
            : Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              ),
      ),
    );
  }
}
