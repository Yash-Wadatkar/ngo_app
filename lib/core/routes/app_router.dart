import 'package:auto_route/auto_route.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes for bottom navbar
        AutoRoute(page: BottomNavbarWidget.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: NotificationRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),

        /// routes for auth screens
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: RegisterRouteWidget.page,
        ),
        AutoRoute(
          page: ForgotPasswordRoute.page,
        ),

        AutoRoute(page: CreateNewPasswordRoute.page),
        AutoRoute(page: OtpVerificationRoute.page),
        AutoRoute(page: ChatListingRoute.page),
        AutoRoute(page: MessageRoute.page)
      ];
}
