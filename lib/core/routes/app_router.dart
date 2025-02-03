import 'package:auto_route/auto_route.dart';
import 'package:ngo_app/core/common_widgets/bottom_navbar_widget.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: DrawerRoute.page, initial: true, children: [
          AutoRoute(
            page: BottomNavbarWidgetRoute.page,
          ),
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: NotificationRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),

        /// Routes for Auth Screens
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRouteWidget.page),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(page: CreateNewPasswordRoute.page),
        AutoRoute(page: OtpVerificationRoute.page),

        /// route of scoreboard screen
        AutoRoute(page: ScoreBoardRoute.page),
      ];
}
