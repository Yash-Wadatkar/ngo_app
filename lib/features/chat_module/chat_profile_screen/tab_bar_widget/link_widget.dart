import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/common_widgets/document_content.dart';

import '../../../../core/constants/app_colors.dart';

class LinkWidget extends StatelessWidget {
  const LinkWidget({super.key});

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
          icon: FontAwesomeIcons.link,
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              InkWell(
                onTap: () {},
                child: CustomTextWidget(
                  text:
                      "https://www.freepik.com/search?format=search&last_filter=page&last_value=3&page=3&query=Perfume+logo+with+T#uuid=08f79510-4de0-4578-a157-827556c53ba3.pdf",
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
