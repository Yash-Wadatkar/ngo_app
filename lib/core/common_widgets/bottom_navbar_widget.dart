import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';

@RoutePage()
class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [DrawerRoute(), SearchRoute(), NotificationRoute(), ProfileRoute()],
      bottomNavigationBuilder: (context, tabsRouter) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 22),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(30), // Rounded border
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  offset: const Offset(0, 2), // Shadow position
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(30), // Ensure clipping for roundness
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: BottomNavigationBar(
                  
                  backgroundColor: AppColors.whiteColor,
                  items: [
                    BottomNavigationBarItem(
                      icon: Image.asset(
                       
                        tabsRouter.activeIndex == 0
                            // Selected 
                            ?  'assets/icons/ic_home_icon.png':
                            'assets/icons/ic_unselected_home_icon.png'  // Unselected color
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/icons/ic_search_icon.png',
                        color: tabsRouter.activeIndex == 1
                            ? AppColors.kPrimaryColor
                            : null,
                      ),
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/icons/ic_notification_icon.png',
                        color: tabsRouter.activeIndex == 2
                            ? AppColors.kPrimaryColor
                            : null,
                      ),
                      label: 'Notification',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/icons/ic_user_profile_icon.png',
                        color: tabsRouter.activeIndex == 3
                            ? AppColors.kPrimaryColor
                            : null
                      ),
                      label: 'Profile',
                    ),
                  ],
                  iconSize: AppSizes.wSize8,
                  selectedItemColor: AppColors.kPrimaryColor,
                  unselectedItemColor: AppColors.greyColor,
                  onTap: tabsRouter.setActiveIndex,
                  currentIndex: tabsRouter.activeIndex,
                  type: BottomNavigationBarType.fixed, // Avoid shifting effect
                  elevation: 0, // Remove BottomNavigationBar shadow
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
