import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/features/home/custom_widgets/custom_home_screen_app_bar_widget.dart';
import 'package:ngo_app/features/home/custom_widgets/post_card_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  final ZoomDrawerController? drawerController;
  const HomeScreen({super.key, required this.drawerController});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabControllerOne;

  @override
  void initState() {
    super.initState();
    _tabControllerOne = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabControllerOne.dispose();
    // _tabControllerTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomHomeScreenAppBarWidget(
            drawerController: widget.drawerController),
        body: Padding(
          padding: AppSizes.horizontalPadding12,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SegmentedTabControl(
                  controller: _tabControllerOne,
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
                      label: "Photos",
                    ),
                    SegmentTab(
                      label: "Videos",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TabBarView(
                    controller: _tabControllerOne,
                    children: [
                      _homeTabWidget(context: context),
                      _accountTabWidget(context: context)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// home tab widget
  Widget _homeTabWidget({required BuildContext context}) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return AppSizes.height10;
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return PostCardWidget();
      },
    );
  }

  /// account tab widget
  Widget _accountTabWidget({required BuildContext context}) {
    return Column(
      children: [],
    );
  }
}
