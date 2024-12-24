import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ngo_app/core/common_widgets/bottom_navbar_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';
import 'package:ngo_app/features/home/ui/home_screen.dart';
import 'package:ngo_app/features/home/ui/menu_screen.dart';

@RoutePage()
class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return 
      ZoomDrawer(
        
        controller: drawerController,
        style: DrawerStyle.defaultStyle,
        borderRadius: 24,
        showShadow: true,
        angle: 0.0,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
        slideWidth: MediaQuery.of(context).size.width * 0.55,
        mainScreenScale: 0.11,
        drawerShadowsBackgroundColor: const Color(0xff3f7588),
        menuBackgroundColor: AppColors.kPrimaryColor,
        clipMainScreen: true,
        mainScreenTapClose: true,
        shadowLayer1Color: AppColors.kPrimaryColor,
        menuScreen: const MenuScreen(),
        mainScreen: BottomNavbarWidgetScreen(zoomDrawerController: drawerController,)
      
    );
  }
}
