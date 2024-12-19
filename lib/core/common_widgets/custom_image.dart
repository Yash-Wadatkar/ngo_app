import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class CustomImage extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final bool isSvg;

  const CustomImage({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.isSvg = true,
  });

  Widget build(BuildContext context) {
    if (isSvg) {
      return SvgPicture.asset(
        imagePath,
        width: width ?? AppSizes.wSize30,
        height: height ?? AppSizes.hSize30,
        fit: fit,
      );
    } else {
      return Image.asset(
        imagePath,
        width: width ?? AppSizes.wSize30,
        height: height ?? AppSizes.hSize30,
        fit: fit,
      );
    }
  }
}
