import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_icons.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/constants/app_strings.dart';

import '../../../core/routes/app_router.gr.dart';

class MenuScreen extends StatelessWidget {
  final ZoomDrawerController? zoomDrawerController;
  const MenuScreen({super.key, this.zoomDrawerController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            AppSizes.height30,
            IconButton(
                onPressed: () {
                  zoomDrawerController?.close!();
                },
                icon: Icon(
                  Icons.close,
                  size: AppSizes.hSize40,
                  color: Colors.white,
                )),
            AppSizes.height20,
            Text(
              'Menu',
              style: GoogleFonts.urbanist(
                  decoration: TextDecoration.none,
                  letterSpacing: 0.8,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: 30),
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          context.pushRoute(RequestTrackingView());
                        },
                        title: Text(
                          AppStrings.menuItemsNameList[index],
                          style: GoogleFonts.urbanist(
                              color: AppColors.whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        leading:
                            SvgPicture.asset(AppIcons.menuIconList[index]));
                  },
                  separatorBuilder: (context, index) {
                    return AppSizes.height10;
                  },
                  itemCount: AppIcons.menuIconList.length),
            ),
          ]),
        ),
      ),
    );
  }
}
