import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: SafeArea(child: Column(
        children: [],
      )),
    );
  }
}