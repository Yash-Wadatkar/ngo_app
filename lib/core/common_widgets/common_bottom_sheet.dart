import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_images.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class CommonBottomSheet extends StatelessWidget {
  final int id;
  const CommonBottomSheet({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppSizes.radius30),
                    topRight: Radius.circular(AppSizes.radius30))),
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.7,
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.4,
              width: double.infinity,
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.radius30),
                      topRight: Radius.circular(AppSizes.radius30))),
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.38,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSizes.radius30),
                        topRight: Radius.circular(AppSizes.radius30)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AppSizes.height40,
                        _searchBarWidget(),
                        AppSizes.height10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/ic_eye_icon.svg',
                                  height: 14,
                                ),
                                Text(
                                  'Total Views (1200)',
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12,
                                      color: AppColors.primaryColor),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                    'assets/icons/ic_heart_icon.svg'),
                                Text(
                                  'Total Views (1200)',
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12,
                                      color: AppColors.primaryColor),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                    'assets/icons/ic_comments_icon.svg'),
                                Text(
                                  'Total Views (1200)',
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12,
                                      color: AppColors.primaryColor),
                                )
                              ],
                            )
                          ],
                        ),
                        AppSizes.height14,
                        Column(
                          children: [
                            ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return id == 1
                                      ? _followingListTileWidget()
                                      : id == 2
                                          ? _commentListTileWidget()
                                          : _sendListTileWidget();
                                },
                                separatorBuilder: (context, index) {
                                  return id == 2
                                      ? AppSizes.height10
                                      : Divider(
                                          color: Color.fromARGB(
                                              255, 237, 237, 239));
                                },
                                itemCount: 5),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
        Positioned(
            top: 70,
            left: 100,
            right: 100,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primaryColor,
                child: IconButton(
                  onPressed: () {
                    context.maybePop();
                  },
                  icon: Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.white,
                  ),
                  color: Colors.white,
                ),
              ),
            ))
      ],
    );
  }

  /// search bar widget of bottom sheet
  Widget _searchBarWidget() {
    return SizedBox(
      height: AppSizes.hSize40,
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xfff9f9fa),
            suffixIcon: Icon(
              Icons.mic,
              size: 22,
            ),
            prefixIcon: Icon(
              Icons.search,
              size: 22,
            ),
            hintText: 'Search',
            hintStyle: GoogleFonts.urbanist(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xffbdbdbd)),
            isDense: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none)),
      ),
    );
  }

  /// listTile widget of bottom sheet list
  Widget _followingListTileWidget() {
    return ListTile(
      trailing: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      horizontalTitleGap: AppSizes.wSize24,
      title: Row(
        children: [
          Text(
            'Queble_Solution',
            style: GoogleFonts.urbanist(
                fontSize: 16, fontWeight: AppSizes.fontWeight500),
          ),
          AppSizes.width12,
          Flexible(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: BorderSide(color: AppColors.primaryColor),
                    elevation: 0,
                    backgroundColor: Color(0xffeffbff),
                    foregroundColor: AppColors.primaryColor,
                    minimumSize: Size(AppSizes.wSize30, AppSizes.hSize16)),
                onPressed: () {},
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  'Follow',
                )),
          )
        ],
      ),
      leading: CircleAvatar(
          radius: 22,
          child: Image.asset('assets/images/profile_pic_image.png')),
    );
  }

  /// send listtile widget
  Widget _sendListTileWidget() {
    return ListTile(
      trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
              side: BorderSide(color: AppColors.primaryColor),
              elevation: 0,
              backgroundColor: Color(0xffeffbff),
              foregroundColor: AppColors.primaryColor,
              minimumSize: Size(AppSizes.wSize30, AppSizes.hSize26)),
          onPressed: () {},
          child: Text(
            'Send',
          )),
      horizontalTitleGap: AppSizes.wSize24,
      title: Row(
        children: [
          Text(
            'Queble_Solution',
            style: GoogleFonts.urbanist(
                fontSize: 16, fontWeight: AppSizes.fontWeight500),
          ),
        ],
      ),
      leading: CircleAvatar(
          radius: 22,
          child: Image.asset('assets/images/profile_pic_image.png')),
    );
  }

  /// comment listile widget
  Widget _commentListTileWidget() {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
              radius: 12,
              child: Image.asset('assets/images/profile_pic_image.png')),
          title: Row(
            children: [
              Text(
                'Maude Hall',
                style: GoogleFonts.urbanist(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              AppSizes.width10,
              Text(
                '14 min',
                style: GoogleFonts.urbanist(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffb6bdc7)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
            style:
                GoogleFonts.urbanist(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        AppSizes.height8,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Text(
                '2 Likes',
                style: GoogleFonts.urbanist(
                    color: Color(0xff8991A0),
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              AppSizes.width12,
              SvgPicture.asset('assets/icons/ic_corner-up-right.svg'),
              AppSizes.width4,
              Text(
                'Reply',
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.urbanist(
                    color: Color(0xff8991A0),
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              Expanded(flex: 10, child: SizedBox()),
              Expanded(
                  child: SvgPicture.asset('assets/icons/ic_thumbs-up_icon.svg'))
            ],
          ),
        )
      ],
    );
  }

  /// 
}
