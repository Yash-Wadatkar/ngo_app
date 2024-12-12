import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/common_toggle.dart';
import 'package:ngo_app/core/common_widgets/custom_image.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../../../../core/constants/app_colors.dart';

class MediaWidget extends StatefulWidget {
  const MediaWidget({super.key});

  @override
  State<MediaWidget> createState() => _MediaToggleScreenState();
}

class _MediaToggleScreenState extends State<MediaWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _bodyUI(),
    );
  }

  Widget _bodyUI() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            CommonToggleSwitch(
                label: ["Image", "Video"],
                toggleFunction: (index) async {
                  setState(() {
                    selectedIndex = index ?? 0;
                  });
                },
                totalSwitches: 2,
                initialLabelIndex: 0),
            AppSizes.height20,
            selectedIndex == 0 ? _imageGridView() : _videoGridView(),
          ],
        ),
      ),
    );
  }

  Widget _imageGridView() {
    return GridView.builder(
        itemCount: 20,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          return CustomImage(
            imagePath: "assets/images/app_logo.svg",
          );
        });
  }

  Widget _videoGridView() {
    return GridView.builder(
        itemCount: 20,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (BuildContext context, int index) {
          return CustomImage(
            imagePath: "assets/images/success_image.svg",
          );
        });
  }
}
