import 'package:flutter/material.dart';
import 'package:ngo_app/core/routes/app_router.dart';
import 'package:ngo_app/core/utils/theme/theme.dart';
import 'package:sizer/sizer.dart'; // Ensure Sizer package is imported

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      /// Use builder method for Sizer
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          routerConfig: _appRouter.config(),

          /// apply theme to the system
          /// Automatically pick system's theme (light or dark)
          themeMode: ThemeMode.system,

          /// for light theme of application
          theme: TAppTheme.lightTheme,

          /// for dark theme of the application
          darkTheme: TAppTheme.darkTheme,

          /// Optional: remove the debug banner
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
