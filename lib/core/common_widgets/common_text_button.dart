import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';

class CommonTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CommonTextButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: CustomTextWidget(text: buttonText),
    );
  }
}
