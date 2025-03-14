import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../../core/common_widgets/custom_profile_avatar.dart';
import '../../core/common_widgets/custom_profile_list_content.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/appbar_title.dart';
import '../../core/routes/app_router.gr.dart';
import '../auth/custom_widgets/custom_app_bar_widget.dart';

@RoutePage()
class ChatListingScreen extends StatelessWidget {
  const ChatListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBarWidget(
        appBarTitle: AppbarTitle.chats,
        logoRequired: false,
      ),
      body: _bodyUI(),
    );
  }

  Widget _bodyUI() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
        
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: ListView.separated(
                itemCount: 30,
                shrinkWrap: true,
                primary: false,
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CustomProfileAvatar(
                    profileName: "Faraz",
                    isOnline: true,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return AppSizes.width15;
                },
              ),
            ),
            _messageContent()
          ],
        ),
      ),
    );
  }

  Widget _messageContent() {
    return ListView.separated(
      itemCount: 30,
      primary: false,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            context.pushRoute(MessageRoute());
          },
          child: CustomProfileListContent(
            profileName: "Faraz",
            profileMessage: "How are you?",
            noOfMsg: "01",
            msgTime: "2 mins ago",
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return AppSizes.height20;
      },
    );
  }
}
