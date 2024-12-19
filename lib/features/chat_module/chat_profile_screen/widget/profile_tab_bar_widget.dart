import 'package:flutter/material.dart';
import 'package:ngo_app/features/chat_module/chat_profile_screen/tab_bar_widget/share_file_widget.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../tab_bar_widget/audio_widget.dart';
import '../tab_bar_widget/document_widget.dart';
import '../tab_bar_widget/link_widget.dart';
import '../tab_bar_widget/media_widget.dart';

class ProfileTabBarWidget extends StatelessWidget {
  const ProfileTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.backgroundColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.textFieldBorderColor),
                ),
                child: TabBar(
                  dividerHeight: 0,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  labelColor: AppColors.primaryColor,
                  unselectedLabelColor: AppColors.whiteColor,
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: AppColors.tabBarTextColor,
                  ),
                  indicatorColor: AppColors.primaryColor,
                  tabs: [
                    Tab(
                      child: CustomTextWidget(
                        text: "Share",
                        fontSize: 14,
                      ),
                    ),
                    Tab(
                      child: CustomTextWidget(
                        text: "Media",
                        fontSize: 14,
                      ),
                    ),
                    Tab(
                      child: CustomTextWidget(
                        text: "Audio",
                        fontSize: 14,
                      ),
                    ),
                    Tab(
                      child: CustomTextWidget(
                        text: "Link",
                        fontSize: 14,
                      ),
                    ),
                    Tab(
                      child: CustomTextWidget(
                        text: "Doc",
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              AppSizes.height16,
              Expanded(
                child: TabBarView(
                  children: [
                    ShareFileWidget(),
                    MediaWidget(),
                    AudioWidget(),
                    LinkWidget(),
                    DocumentWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
