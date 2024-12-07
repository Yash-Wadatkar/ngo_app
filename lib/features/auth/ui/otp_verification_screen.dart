import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/constants/app_strings.dart';
import 'package:ngo_app/features/auth/custom_widgets/custom_app_bar_widget.dart';
import 'package:ngo_app/features/auth/custom_widgets/custom_button_widget.dart';
import 'package:ngo_app/features/auth/custom_widgets/custom_pin_put_field.dart';

@RoutePage()
class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// custom app bar widget
      appBar: CustomAppBarWidget(
        onTap: () {
          context.maybePop();
        },
      ),
      body: Padding(
        padding: AppSizes.horizontalPadding6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 28, child: SizedBox()),

            /// otp verification screen header
            Text(AppStrings.otpVerificationScreenHeader,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.headlineLarge),

            Expanded(flex: 10, child: SizedBox()),

            /// otp verification screen subheading
            Text(
              AppStrings.otpVerificationScreenSubHeading,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Expanded(flex: 32, child: SizedBox()),

            /// custom input otp field
            Center(child: CustomPinPutField()),

            Expanded(flex: 38, child: SizedBox()),

            /// custom button to verify otp
            CustomButtonWidget(buttonLabel: AppStrings.verify),

            Expanded(flex: 668, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
