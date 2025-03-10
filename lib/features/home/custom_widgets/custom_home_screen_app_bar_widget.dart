import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/common_widgets/custom_image.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';

class CustomHomeScreenAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final ZoomDrawerController? drawerController;
  const CustomHomeScreenAppBarWidget({super.key, this.drawerController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24))),
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xff0d5069)),
                              child: Padding(
                                padding: EdgeInsets.all(14.0),
                                child: GestureDetector(
                                  onTap: () {
                                    drawerController?.toggle!();
                                  },
                                  child: Image.asset(
                                      'assets/icons/ic_hamburger_icon.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(flex: 108, child: SizedBox()),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          'Home',
                          style: GoogleFonts.urbanist(
                              fontSize: 22,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w700),
                        ),
                        Expanded(flex: 108, child: SizedBox()),
                        GestureDetector(
                          onTap: () {
                            context.pushRoute(ChatListingRoute());
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xff0d5069)),
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Image.asset(
                                      'assets/icons/ic_message_icon.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AppSizes.hSize8),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 5,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(22),
                                  child: SizedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                          'assets/images/profile_pic_image.png'),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hello!',
                                          style: GoogleFonts.urbanist(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff80a3b0)),
                                        ),
                                        Text('Sahail Kadam',
                                            style: GoogleFonts.urbanist(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.whiteColor,
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Current Score',
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff80a3b0)),
                                ),
                                Text('29',
                                    style: GoogleFonts.urbanist(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.whiteColor,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xff80a3b0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: AppSizes.hSize8, bottom: AppSizes.hSize10),
                      child: Row(
                        spacing: 10,
                        children: [
                          /// media widget to upload photos
                          Expanded(
                              child: _upLoadMediaWidget(
                                  context: context,
                                  imagePath: 'assets/icons/ic_gallery_icon.svg',
                                  mediaText: 'Upload Photo')),

                          Expanded(
                              child: _upLoadMediaWidget(
                                  context: context,
                                  imagePath: 'assets/icons/ic_gallery_icon.svg',
                                  mediaText: 'Upload Video')),
                        ],
                      ),
                    ),
                    AppSizes.height2,
                    Container(
                      width: 64.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                          color: Color(0xff80a3b0),
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// upload media widget
  Widget _upLoadMediaWidget(
      {required BuildContext context,
      required String imagePath,
      required String mediaText}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0xff195971),
          borderRadius: BorderRadius.circular(7)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(),
          ),
          CustomImage(
            isSvg: true,
            imagePath: imagePath,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(),
          ),
          Flexible(
            child: Text(
              mediaText,
              style: GoogleFonts.urbanist(
                  color: AppColors.whiteColor,
                  fontSize: 12,
                  fontWeight: AppSizes.fontWeight400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(250);
}
