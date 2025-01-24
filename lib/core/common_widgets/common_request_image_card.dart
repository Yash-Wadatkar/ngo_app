import 'dart:ui'; // Import this for the ImageFilter class

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../../features/request_tracking/request_tracking_view/widget/column_widget.dart';
import 'common_status_card.dart';

class CommonRequestImageCard extends StatelessWidget {
  final VoidCallback? onTap;
  const CommonRequestImageCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
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
              width: double.infinity,
              child: Image.asset(
                'assets/images/profile_pic.png',
                fit: BoxFit.fill,
              ),
            ),
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
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Row(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Image.asset(
                                      'assets/images/profile_pic_image.png')),
                              AppSizes.width10,
                              Column(
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
                              Expanded(flex: 4, child: SizedBox()),
                              CommonStatusCard(
                                title: "Completed",
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          child: Row(
                            children: [
                              Expanded(
                                child: ColumnWidget(
                                    title: "Request Name", subTitle: "Mahesh"),
                              ),
                              Expanded(
                                child: ColumnWidget(
                                    title: "Category", subTitle: "Education"),
                              ),
                              Expanded(
                                child: ColumnWidget(
                                    title: "Gender", subTitle: "Male"),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
