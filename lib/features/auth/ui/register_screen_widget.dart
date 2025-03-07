import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/common_widgets/custom_button_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_icons.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/constants/app_strings.dart';
import 'package:ngo_app/features/auth/custom_widgets/custom_app_bar_widget.dart';
import 'package:ngo_app/features/auth/custom_widgets/social_media_filterchip.dart';

import '../../../core/common_widgets/custom_input_field_widget.dart';

@RoutePage()
class RegisterScreenWidget extends StatelessWidget {
  const RegisterScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// custom appbar widget
      appBar: CustomAppBarWidget(
        onTap: () {
          context.maybePop();
        },
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizes.horizontalPadding6,
          child: Column(
            spacing: AppSizes.hSize10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizes.height2,

              /// register screen header
              Text(AppStrings.registerScreenHeading,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.headlineLarge),
              AppSizes.height6,

              /// username input field
              CommonInputFieldWidget(
                hintText: AppStrings.userName,
                name: AppStrings.userName,
              ),

              /// email input field
              CommonInputFieldWidget(
                hintText: AppStrings.email,
                name: AppStrings.email,
              ),

              /// password input field
              CommonInputFieldWidget(
                hintText: AppStrings.password,
                name: AppStrings.password,
              ),

              /// confirm password input field
              CommonInputFieldWidget(
                hintText: AppStrings.confirmPassword,
                name: AppStrings.confirmPassword,
              ),

              /// select gender
              CommonInputFieldWidget(
                hintText: AppStrings.selectGender,
                name: AppStrings.selectGender,
              ),

              /// custom register button
              CustomButtonWidget(
                buttonLabel: 'Register',
                ontap: () {},
              ),

              _orLoginWithTextWidget(context),

              /// filter chip widget with social media icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: AppIcons.socialMediaIconsList.map((iconPath) {
                  return SocialMediaFilterChip(
                    assetPath: iconPath,
                    onSelected: () {
                      // Add specific social media login logic here
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// widget for orlogin with text and divider
  Widget _orLoginWithTextWidget(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 18,
            thickness: 1,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.wSize2),
          child: Text(
              overflow: TextOverflow.ellipsis,
              AppStrings.orLoginWithText, // Replace with your desired text
              style: GoogleFonts.urbanist(
                  fontSize: AppSizes.fSize16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColors.greyColor
                      : AppColors.whiteColor)),
        ),
        Expanded(
          child: Divider(
            height: 18,
            thickness: 1,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
