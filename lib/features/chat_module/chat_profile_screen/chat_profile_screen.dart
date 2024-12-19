import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/features/chat_module/chat_profile_screen/widget/profile_app_bar.dart';
import 'package:ngo_app/features/chat_module/chat_profile_screen/widget/profile_icon_and_name_widget.dart';
import 'package:ngo_app/features/chat_module/chat_profile_screen/widget/profile_tab_bar_widget.dart';

@RoutePage()
class ChatProfileScreen extends StatelessWidget {
  const ChatProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primaryColor,
              AppColors.tertiaryColor,
            ],
            begin: Alignment.topRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProfileAppBar(
              onShareTap: () {},
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
            ProfileIconAndNameWidget(
              name: "Faraz Shaikh",
              onBlockTap: () {},
              onUserTap: () {},
            ),
            ProfileTabBarWidget()
          ],
        ),
      ),
    );
  }
}
