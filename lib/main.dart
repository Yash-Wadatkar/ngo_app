import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/routes/app_router.dart';
import 'package:ngo_app/core/utils/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, Widget? child) {
        /// Use builder method for Sizer
        return MaterialApp.router(
          routerConfig: _appRouter.config(),

          /// apply theme to the system
          /// Automatically pick system's theme (light or dark)
          themeMode: ThemeMode.system,

          /// for light theme of application
          theme: TAppTheme.lightTheme,
          color: AppColors.whiteColor,

          /// for dark theme of the application
          darkTheme: TAppTheme.darkTheme,

          /// Optional: remove the debug banner
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
