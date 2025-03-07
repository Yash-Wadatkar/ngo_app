import 'package:auto_route/auto_route.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: DrawerRoute.page, children: [
          AutoRoute(
            page: BottomNavbarWidgetRoute.page,
          ),
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: NotificationRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),

        /// Routes for Auth Screens
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(page: RegisterRouteWidget.page),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(page: CreateNewPasswordRoute.page),
        AutoRoute(page: OtpVerificationRoute.page),
        AutoRoute(page: OtpVerificationRoute.page),
        AutoRoute(page: ChatListingRoute.page),
        AutoRoute(page: MessageRoute.page),
        AutoRoute(page: ChatProfileRoute.page),
        AutoRoute(page: SettingRoute.page),
        AutoRoute(page: AccountInfoRoute.page),
        AutoRoute(page: AccountInfoRoute.page),
        AutoRoute(page: RequestTrackingView.page),
        AutoRoute(page: RequestTrackingDetailsView.page),

        /// route of scoreboard screen
        AutoRoute(page: ScoreBoardRoute.page),
      ];
}
