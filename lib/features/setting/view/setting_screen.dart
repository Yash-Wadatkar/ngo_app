import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/constants/app_strings.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';
import 'package:ngo_app/features/setting/view/widget/need_support.dart';
import 'package:ngo_app/features/setting/view/widget/setting_card.dart';

import '../../../core/common_widgets/common_app_bar.dart';
import '../../../core/common_widgets/custom_input_field_widget.dart';
import '../model/setting_model.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SettingModel> settingList = [
      SettingModel(
        name: "Account Info",
        description: "Edit your personal and delivery info.",
        icon: FontAwesomeIcons.user,
        routes: () => context.pushRoute(
          AccountInfoRoute(),
        ),
      ),
      SettingModel(
        name: "Your Activity",
        description: "Manage you Interaction contact and account activity.",
        icon: FontAwesomeIcons.bell,
        routes: () {},
      ),
      SettingModel(
        name: "Chats Setting",
        description: "How people can reach you.",
        icon: FontAwesomeIcons.bell,
        routes: () {},
      ),
      SettingModel(
        name: "Security",
        description: "Manage all of your personal information.",
        icon: Icons.security,
        routes: () {},
      ),
      SettingModel(
        name: "Help",
        description: "More Info and Support.",
        icon: Icons.help_center_outlined,
        routes: () {},
      ),
      SettingModel(
        name: "Logout",
        description: "Logout of Karams on this device",
        icon: Icons.logout,
        routes: () {},
      ),
    ];

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CommonAppBar(appBarTitle: "Setting"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: AppSizes.hSize20,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CommonInputFieldWidget(
                name: AppStrings.search,
                hintText: AppStrings.search,
                suffixIcon: Icon(
                  FontAwesomeIcons.microphone,
                  color: AppColors.greyColor,
                  size: AppSizes.hSize14,
                ),
                prefixIcon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: AppColors.greyColor,
                  size: AppSizes.hSize14,
                ),
              ),
              GridView.builder(
                itemCount: settingList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 170),
                itemBuilder: (BuildContext context, int index) {
                  return SettingCard(
                    name: settingList[index].name,
                    description: settingList[index].description,
                    routes: settingList[index].routes,
                    icon: settingList[index].icon,
                  );
                },
              ),
              NeedSupportWidget()
            ],
          ),
        ),
      ),
    );
  }
}
