import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/common_widgets/common_search_bar_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

@RoutePage()
class ScoreBoardScreen extends StatefulWidget {
  const ScoreBoardScreen({super.key});

  @override
  State<ScoreBoardScreen> createState() => _ScoreBoardScreenState();
}

class _ScoreBoardScreenState extends State<ScoreBoardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Score board',
          style:
              GoogleFonts.urbanist(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizes.height20,
            Text(
              'Your Scorers',
              style:
                  GoogleFonts.mulish(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            AppSizes.height20,
            CommonSearchBarWidget(
              hintText: 'Search',
            ),
            AppSizes.height30,
            SegmentedTabControl(
              controller: _tabController,
              splashColor: Colors.transparent,
              tabTextColor: Color(0xff808080),
              textStyle: GoogleFonts.urbanist(
                  fontSize: 16, fontWeight: FontWeight.w600),
              selectedTabTextColor: AppColors.primaryColor,
              barDecoration: BoxDecoration(
                  border: Border.all(color: Color(0xffF3F4F6), width: 1.2),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)),
              indicatorPadding: EdgeInsets.all(5),
              indicatorDecoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color(0xffF3FCFF)),
              tabs: [
                SegmentTab(
                  label: "Top Scorers",
                ),
                SegmentTab(
                  label: "Your Scores History",
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _liveScoreTabWidget(context: context),
                    _scoreHistoryTabWidget(context: context)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _liveScoreTabWidget({required BuildContext context}) {
    return Container(
      child: Column(
        children: [
          AppSizes.height50,
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: AppColors.primaryColor,
                      ),
                      height: 76,
                      width: 106,
                      child: Center(
                        child: Text(
                          '2',
                          style: GoogleFonts.urbanist(
                              fontSize: 40,
                              fontWeight: AppSizes.fontWeight700,
                              color: Colors.white),
                        ),
                      )),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: AppColors.primaryColor,
                    ),
                    height: 100,
                    width: 115,
                    child: Center(
                        child: Text(
                      '1',
                      style: GoogleFonts.urbanist(
                          fontSize: 40,
                          fontWeight: AppSizes.fontWeight700,
                          color: Colors.white),
                    )),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: AppColors.primaryColor,
                      ),
                      height: 61,
                      width: 106,
                      child: Center(
                        child: Text(
                          '3',
                          style: GoogleFonts.urbanist(
                              fontSize: 40,
                              fontWeight: AppSizes.fontWeight700,
                              color: Colors.white),
                        ),
                      ))
                ],
              ),
              Positioned(
                  top: 80,
                  child: Container(
                    height: 100,
                    width: 300,
                    color: Colors.white,
                  )),
              Positioned(
                  right: 100,
                  left: 100,
                  top: 70,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget _scoreHistoryTabWidget({required BuildContext context}) {
    return Container();
  }
}
