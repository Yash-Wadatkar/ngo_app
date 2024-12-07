import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ngo_app/core/constants/app_images.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final void Function()? ontap;
  const CustomAppBarWidget({super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: AppSizes.horizontalPadding2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(onTap: ontap, child: Icon(Icons.arrow_back_ios)),
              SvgPicture.asset(
                AppImages.appLogoImage,
              )
            ],
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
