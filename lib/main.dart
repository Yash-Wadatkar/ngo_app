import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/routes/app_router.dart';
import 'package:ngo_app/core/utils/theme/theme.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

void main() {
  Bloc.observer = TalkerBlocObserver(
    settings: TalkerBlocLoggerSettings(
      enabled: true,
      printEventFullData: false,
      printStateFullData: false,
      printChanges: true,
      printClosings: true,
      printCreations: true,
      printEvents: true,
      printTransitions: true,
      transitionFilter: (bloc, transition) =>
          bloc.runtimeType.toString() == 'AuthBloc',
      eventFilter: (bloc, event) => bloc.runtimeType.toString() == 'AuthBloc',
    ),
  );
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
