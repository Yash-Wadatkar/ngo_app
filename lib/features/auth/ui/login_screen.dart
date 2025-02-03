import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/common_widgets/custom_button_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_icons.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/constants/app_strings.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';
import 'package:ngo_app/features/auth/custom_widgets/custom_app_bar_widget.dart';
import 'package:ngo_app/features/auth/custom_widgets/custom_input_field_widget.dart';
import 'package:ngo_app/features/auth/custom_widgets/social_media_filterchip.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// custom appbar widget
      appBar: CustomAppBarWidget(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizes.horizontalPadding6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizes.height2,

              /// login screen header
              Text(AppStrings.loginScreenHeading,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.headlineLarge),
              AppSizes.height6,

              /// email input field
              CustomInputFieldWidget(
                hintText: AppStrings.enterYourEmailText,
              ),

              /// password input field
              CustomInputFieldWidget(
                hintText: AppStrings.enterYourPasswordText,
                icon: Image.asset(AppIcons.eyeIcon),
              ),

              /// forgot password text
              Padding(
                padding: EdgeInsets.only(bottom: AppSizes.hSize4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pushRoute(ForgotPasswordRoute());
                      },
                      child: Text(AppStrings.forgotPasswordText,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? AppColors.greyColor // grey for light mode
                                    : AppColors
                                        .whiteColor, // White for dark mode)),
                          )),
                    )
                  ],
                ),
              ),

              /// custom login button
              CustomButtonWidget(
                buttonLabel: AppStrings.loginText,
                ontap: () {
                  context.pushRoute(BottomNavbarWidgetRoute());
                },
              ),

              AppSizes.height6,

              /// or login with text with divider widget
              _orLoginWithTextWidget(context),

              AppSizes.height4,

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

              AppSizes.height16,

              /// dont have account register text widget
              _dontHaveAccountRegisterWidget(
                context: context,
                ontap: () {
                  context.pushRoute(RegisterRouteWidget());
                },
              )
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

  /// don't have account register text widget
  Widget _dontHaveAccountRegisterWidget(
      {required BuildContext context, void Function()? ontap}) {
    return Center(
      child: RichText(
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: AppStrings.dontHaveAnAccountText,
                style: GoogleFonts.urbanist(
                    fontSize: AppSizes.fSize16,
                    fontWeight: AppSizes.fontWeight500,
                    color: Theme.of(context).brightness == Brightness.light
                        ? AppColors.blackColor
                        : AppColors.whiteColor)),
            TextSpan(
                recognizer: TapGestureRecognizer()..onTap = ontap,
                text: AppStrings.registerNowText,
                style: GoogleFonts.urbanist(
                    fontSize: AppSizes.fSize16,
                    fontWeight: AppSizes.fontWeight700,
                    color: AppColors.secondaryColor))
          ])),
    );
  }
}
