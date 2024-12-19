import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/common_widgets/document_content.dart';
import 'package:ngo_app/core/constants/app_colors.dart';

class AudioWidget extends StatelessWidget {
  const AudioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _bodyUI(),
    );
  }

  Widget _bodyUI() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return DocumentContent(
          icon: Icons.mic_sharp,
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              CustomTextWidget(
                text: "Cover Version",
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
              CustomTextWidget(
                text: "37 min",
                fontSize: 13,
              ),
              CustomTextWidget(
                text: "20/09/2023 : 03:03",
                fontSize: 11,
              ),
            ],
          ),
        );
      },
    );
  }
}
