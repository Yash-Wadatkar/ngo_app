import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/common_widgets/custom_button_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/constants/app_strings.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';
import 'package:ngo_app/features/auth/custom_widgets/custom_app_bar_widget.dart';

import '../../../core/common_widgets/custom_input_field_widget.dart';

@RoutePage()
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        onTap: () {
          context.maybePop();
        },
      ),
      body: Padding(
        padding: AppSizes.horizontalPadding6,
        child: Column(
          spacing: AppSizes.hSize12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// forgot password screen header
            Text(AppStrings.forgotPasswordHeading,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.headlineLarge),

            /// forgot password screen subheading
            Text(
              AppStrings.forgotPasswordScreenSubHeading,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            /// custom input field to enter email
            CommonInputFieldWidget(
              hintText: AppStrings.enterYourEmailText,
              name: AppStrings.enterYourEmailText,
            ),

            /// custom button widget to move to otp screen
            CustomButtonWidget(
              buttonLabel: AppStrings.sendCodeText,
              ontap: () {
                context.pushRoute(OtpVerificationRoute());
              },
            ),

            /// remeber password text button widget
            _rememberPasswordLoginWidget(
              context: context,
              ontap: () {
                context.replaceRoute(LoginRoute());
              },
            ),
          ],
        ),
      ),
    );
  }

  /// remeber password text button widget
  Widget _rememberPasswordLoginWidget(
      {required BuildContext context, void Function()? ontap}) {
    return Center(
      child: RichText(
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: AppStrings.rememberPassword,
                style: GoogleFonts.urbanist(
                    fontSize: AppSizes.fSize16,
                    fontWeight: AppSizes.fontWeight500,
                    color: Theme.of(context).brightness == Brightness.light
                        ? AppColors.blackColor
                        : AppColors.whiteColor)),
            TextSpan(
                recognizer: TapGestureRecognizer()..onTap = ontap,
                text: AppStrings.loginText,
                style: GoogleFonts.urbanist(
                    fontSize: AppSizes.fSize16,
                    fontWeight: AppSizes.fontWeight700,
                    color: AppColors.secondaryColor))
          ])),
    );
  }
}
