import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/common_widgets/document_content.dart';

import '../../../../core/constants/app_colors.dart';

class DocumentWidget extends StatelessWidget {
  const DocumentWidget({super.key});

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
          icon: FontAwesomeIcons.file,
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              CustomTextWidget(
                text: "HannahBusing_Resume.pdf",
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
              CustomTextWidget(
                text: "200KB",
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

