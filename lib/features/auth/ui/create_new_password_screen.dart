import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/custom_button_widget.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/constants/app_strings.dart';
import 'package:ngo_app/features/auth/custom_widgets/custom_app_bar_widget.dart';

import '../../../core/common_widgets/custom_input_field_widget.dart';

@RoutePage()
class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// custom app bar widget
      appBar: CustomAppBarWidget(
        onTap: () {},
      ),
      body: Padding(
        padding: AppSizes.horizontalPadding6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 28, child: SizedBox()),

            /// create new password screen header
            Text(AppStrings.createNewPasswordHeading,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.headlineLarge),
            Expanded(flex: 10, child: SizedBox()),

            /// create new password screen subheading
            Text(
              AppStrings.createNewPasswordSubHeading,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Expanded(flex: 32, child: SizedBox()),

            /// custom textfield widget to enter new password
            CommonInputFieldWidget(
              hintText: AppStrings.newPassword,
              name: AppStrings.newPassword,
            ),

            /// custom textfield widget to confirm password
            CommonInputFieldWidget(
              hintText: AppStrings.confirmPassword,
              name: AppStrings.confirmPassword,
            ),

            Expanded(flex: 28, child: SizedBox()),

            /// custom button to reset password
            CustomButtonWidget(buttonLabel: AppStrings.resetPassword),

            Expanded(flex: 553, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
