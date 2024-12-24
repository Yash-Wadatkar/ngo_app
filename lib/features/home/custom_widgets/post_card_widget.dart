import 'dart:ui'; // Import this for the ImageFilter class
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Stack(
        children: [
          // Image Container
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
           height: 350.h,
            width: double.infinity,
            child: Image.asset(
              'assets/images/profile_pic.png',
              fit: BoxFit.fill,
            ),
          ),
          // Overlay Container with Blur Effect
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(25)), // Match the card's border radius
                child: Container(
                  height: 48.h,
                  color: Colors.white.withValues(
                      alpha: 0.5), // Optional: Add some transparency
                  child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 5.0), // Adjust the blur intensity
                      child: Padding(
                        padding: AppSizes.verticalPadding6,
                        child: Row(
                          children: [
                            AppSizes.width10,
                            ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                    'assets/images/profile_pic_image.png')),
                            AppSizes.width10,
                            Padding(
                              padding: AppSizes.verticalPadding2,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text('Riddhi Tiwari',
                                        style: GoogleFonts.urbanist(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.whiteColor)),
                                  ),
                                  Flexible(
                                    child: Text('20/09/2023',
                                        style: GoogleFonts.urbanist(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.whiteColor)),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(flex: 4, child: SizedBox()),
                            Expanded(
                              child: SvgPicture.asset(
                                  'assets/icons/ic_verification_badge_icon.svg'),
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ),

          Positioned(
            top: 60
                .h, // Position it below the first container (height + padding)
            right: 0.w,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  )),

              height: 274.h, // Set the height of the vertical container
              // Optional: Add some transparency
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: -1, sigmaY: -1),
                child: Padding(
                  padding: AppSizes.horizontalPadding10,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppSizes.height10,
                        _postIconButtons(
                            context: context,
                            iconPath: 'assets/icons/ic_heart_icon.svg',
                            isCountRequired: true),
                        AppSizes.height10,
                        _postIconButtons(
                            context: context,
                            iconPath: 'assets/icons/ic_comments_icon.svg',
                            isCountRequired: true),
                        AppSizes.height10,
                        _postIconButtons(
                            context: context,
                            iconPath: 'assets/icons/ic_share_icon.svg'),
                        AppSizes.height10,
                        _postIconButtons(
                            context: context,
                            iconPath: 'assets/icons/ic_menu_icon.svg')
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _postIconButtons(
      {required BuildContext context,
      required String iconPath,
      void Function()? ontap,
      bool? isCountRequired}) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Container(
              padding: AppSizes.padding10,
              decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.6),
                  //  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.circle),
              child: Padding(
                padding: EdgeInsets.all(4),
                child: SvgPicture.asset(
                  iconPath,
                  fit: BoxFit.fill,
                  width: 10.w,
                  height: 14.h,
                ),
              )),
        ),
        AppSizes.height2,
        isCountRequired == true
            ? Text(
                '06',
                style: GoogleFonts.urbanist(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.whiteColor),
              )
            : SizedBox()
      ],
    );
  }
}
