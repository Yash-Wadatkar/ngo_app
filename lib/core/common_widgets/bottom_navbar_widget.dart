import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ngo_app/core/common_widgets/common_bottom_sheet.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';

@RoutePage()
class BottomNavbarWidgetScreen extends StatelessWidget {
  final ZoomDrawerController? zoomDrawerController;
  const BottomNavbarWidgetScreen({super.key, this.zoomDrawerController});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        HomeRoute(drawerController: zoomDrawerController),
        SearchRoute(),
        NotificationRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(30), // Rounded border
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 5,
                      offset: const Offset(0, 2), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: AppSizes.verticalPadding20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildNavItem(
                        context,
                        icon: 'assets/icons/ic_unselected_home_icon.png',
                        label: 'Home',
                        isSelected: tabsRouter.activeIndex == 0,
                        onTap: () => tabsRouter.setActiveIndex(0),
                      ),
                      _buildNavItem(
                        context,
                        icon: 'assets/icons/ic_search_icon.png',
                        label: 'Search',
                        isSelected: tabsRouter.activeIndex == 1,
                        onTap: () => tabsRouter.setActiveIndex(1),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100.sp),
                          child: SpeedDial(
                            useRotationAnimation: true,
                            renderOverlay: false,
                            closeManually: true,
                            closeDialOnPop: true,
                            activeChild: SvgPicture.asset(
                                'assets/icons/ic_cross_icon.svg'),
                            animatedIconTheme:
                                IconThemeData(color: AppColors.whiteColor),
                            direction: SpeedDialDirection.up,
                            backgroundColor: AppColors.primaryColor,
                            visible: true,
                            childrenButtonSize: Size(50.w, 55.h),
                            curve: Curves.bounceInOut,
                            children: [
                              SpeedDialChild(
                                label: 'Animal',
                                shape: CircleBorder(),
                                child: SvgPicture.asset(
                                    'assets/icons/ic_animal_icon.svg'),
                                backgroundColor: AppColors.primaryColor,
                                onTap: () {},
                              ),
                              SpeedDialChild(
                                label: 'Person',
                                shape: CircleBorder(),
                                child: SvgPicture.asset(
                                    'assets/icons/ic_person_icon.svg'),
                                backgroundColor: AppColors.primaryColor,
                                onTap: () {},
                              )
                            ],
                            child: SvgPicture.asset(
                                'assets/icons/ic_plus_icon.svg'),
                          )),
                      _buildNavItem(
                        context,
                        icon: 'assets/icons/ic_notification_icon.png',
                        label: 'Notification',
                        isSelected: tabsRouter.activeIndex == 2,
                        onTap: () => tabsRouter.setActiveIndex(2),
                      ),
                      _buildNavItem(
                        context,
                        icon: 'assets/icons/ic_user_profile_icon.png',
                        label: 'Profile',
                        isSelected: tabsRouter.activeIndex == 3,
                        onTap: () => tabsRouter.setActiveIndex(3),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  /// bottom navbar icons widget
  Widget _buildNavItem(
    BuildContext context, {
    required String icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            color: isSelected ? AppColors.primaryColor : AppColors.greyColor,
          ),
          Flexible(
            child: Text(
              overflow: TextOverflow.ellipsis,
              label,
              style: TextStyle(
                fontSize: 12,
                color:
                    isSelected ? AppColors.primaryColor : AppColors.greyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
