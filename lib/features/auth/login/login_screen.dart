import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/common_widgets/custom_button_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_icons.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/constants/app_strings.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';
import 'package:ngo_app/features/auth/custom_widgets/custom_app_bar_widget.dart';
import 'package:ngo_app/features/auth/custom_widgets/social_media_filterchip.dart';
import 'package:ngo_app/features/auth/login/login_controller.dart';

import '../../../core/common_widgets/custom_input_field_widget.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _controller = Get.put(LoginController());
  final formKey = GlobalKey<FormBuilderState>();
  final FocusNode usernameFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
          automaticallyImplyLeading: false, logoRequired: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizes.horizontalPadding6,
          child: FormBuilder(
            key: formKey,
            child: Column(
              spacing: AppSizes.hSize10,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppSizes.height20,

                Text(
                  AppStrings.loginScreenHeading,
                  style: GoogleFonts.urbanist(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor,
                  ),
                ),

                CommonInputFieldWidget(
                  name: AppStrings.enterYourEmailText,
                  hintText: AppStrings.enterYourEmailText,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),

                /// Password Field
                CommonInputFieldWidget(
                  name: AppStrings.enterYourPasswordText,
                  hintText: AppStrings.enterYourPasswordText,
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                AppSizes.height10,

                /// Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      context.pushRoute(ForgotPasswordRoute());
                    },
                    child: Text(
                      AppStrings.forgotPasswordText,
                      style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.bold,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                ),

                /// Login Button
                CustomButtonWidget(
                  buttonLabel: AppStrings.loginText,
                  onTap: () {
                    // if (formKey.currentState != null &&
                    //     formKey.currentState!.validate()) {
                    //   final formData = formKey.currentState!.value;
                    //   _controller.login(
                    //     email: formData[AppStrings.enterYourPasswordText],
                    //     password: formData[AppStrings.enterYourPasswordText],
                    //   );
                    // } else {
                    //   CommonSnackBarWithResponse(
                    //     title: "Please fix the errors in the form",
                    //     isSuccessDialog: false,
                    //   );
                    // }
                    context.pushRoute(BottomNavbarWidgetRoute());
                  },
                ),

                _orLoginWithTextWidget(),

                /// Social Media Login
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: AppIcons.socialMediaIconsList.map(
                    (iconPath) {
                      return SocialMediaFilterChip(
                        assetPath: iconPath,
                        onSelected: () {},
                      );
                    },
                  ).toList(),
                ),

                AppSizes.height16,
                _dontHaveAccountRegisterWidget(
                  onTap: () {
                    context.pushRoute(
                      RegisterRouteWidget(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _orLoginWithTextWidget() {
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
            AppStrings.orLoginWithText,
            style: GoogleFonts.urbanist(
              fontSize: AppSizes.fSize16,
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
            ),
          ),
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
  Widget _dontHaveAccountRegisterWidget({void Function()? onTap}) {
    return Center(
      child: RichText(
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: AppStrings.dontHaveAnAccountText,
                style: GoogleFonts.urbanist(
                    fontSize: AppSizes.fSize16,
                    fontWeight: AppSizes.fontWeight500,
                    color: AppColors.blackColor)),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = onTap,
              text: AppStrings.registerNowText,
              style: GoogleFonts.urbanist(
                  fontSize: AppSizes.fSize16,
                  fontWeight: AppSizes.fontWeight700,
                  color: AppColors.secondaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
