import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';

@RoutePage()
class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
