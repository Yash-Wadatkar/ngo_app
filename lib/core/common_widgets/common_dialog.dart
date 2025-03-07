import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'custom_text_widget.dart';

@RoutePage()
class CommonResponseDialogView extends StatelessWidget {
  final String? responseMessage;
  final String? statusCode;
  final String? buttonText;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final String? routePage;
  final bool isLoading;
  final String? loadingMessage;

  const CommonResponseDialogView({
    super.key,
    this.responseMessage,
    this.statusCode,
    this.buttonText,
    this.onTap,
    this.width,
    this.height,
    this.routePage,
    this.loadingMessage,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      title: isLoading
          ? Center(
              child: Column(
              children: [
                CustomTextWidget(
                  text: loadingMessage ?? "",
                  fontSize: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                CircularProgressIndicator(),
              ],
            ))
          : Text(responseMessage ?? ''),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            if (routePage != null) {
              context.router.navigateNamed(routePage!);
            }
            if (onTap != null) {
              onTap!();
            } else {
              context.maybePop();
            }
          },
          child: Text(buttonText ?? "Ok"),
        ),
      ],
    );
  }
}
