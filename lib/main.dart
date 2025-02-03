import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ngo_app/core/routes/app_router.dart';
import 'package:ngo_app/core/utils/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Lock orientation to portrait
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Match your design spec dimensions
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: _appRouter.config(),

          /// Apply theme to the system
          themeMode: ThemeMode.system,

          /// Light theme of the application
          theme: TAppTheme.lightTheme,

          /// Dark theme of the application
          darkTheme: TAppTheme.darkTheme,

          /// Optional: Remove the debug banner
          debugShowCheckedModeBanner: true,
        );
      },
    );
  }
}
