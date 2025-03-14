import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class CommonToggleSwitch extends StatelessWidget {
  final List<String> label;
  final Function(int?)? toggleFunction;
  final int totalSwitches;
  final int initialLabelIndex;
  final double? width;
  final double? radius;
  final List<IconData>? icons;

  const CommonToggleSwitch({
    super.key,
    required this.label,
    this.width,
    this.radius,
    required this.toggleFunction,
    required this.totalSwitches,
    required this.initialLabelIndex,
    this.icons, // Added optional icons
  });

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      radiusStyle: true,
      centerText: true,
      icons: icons ?? [FontAwesomeIcons.image, FontAwesomeIcons.video],
      activeFgColor: AppColors.primaryColor,
      inactiveFgColor: AppColors.primaryColor,
      customTextStyles: [
        TextStyle(
            fontSize: AppSizes.fSize14,
            fontWeight: FontWeight.w600,
            overflow: TextOverflow.ellipsis, // Handle text overflow gracefully
            color: AppColors.primaryColor),
      ],
      cornerRadius: radius ?? AppSizes.hSize30,
      minHeight: AppSizes.hSize40,
      minWidth: width ?? AppSizes.wSize100,
      initialLabelIndex: initialLabelIndex,
      multiLineText: true,
      activeBgColor: [AppColors.toggleSelectedColor],
      inactiveBgColor: AppColors.whiteColor,
      labels: label,
      totalSwitches: totalSwitches,
      onToggle: toggleFunction,
    );
  }
}
