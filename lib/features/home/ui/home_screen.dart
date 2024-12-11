import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/constants/app_colors.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  final ZoomDrawerController drawerController;
  const HomeScreen({super.key, required this.drawerController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: AppColors.kPrimaryColor,
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
                                    drawerController.toggle!();
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
                        ClipRRect(
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: Row(
                        children: [
                          Row(
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
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hello!',
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.urbanist(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff80a3b0)),
                                    ),
                                    Text('Sahail Kadam',
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.urbanist(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.whiteColor,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(child: SizedBox()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current Score',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.urbanist(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff80a3b0)),
                              ),
                              Text('29',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.urbanist(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.whiteColor,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xff80a3b0),
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
