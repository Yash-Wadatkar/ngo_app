import 'package:auto_route/auto_route.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here

        /// routes for auth screens
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(
          page: RegisterRouteWidget.page,
        ),
        AutoRoute(
          page: ForgotPasswordRoute.page,
        ),

        AutoRoute(page: CreateNewPasswordRoute.page),
        AutoRoute(page: OtpVerificationRoute.page),
        AutoRoute(page: ChatListingRoute.page)
      ];
}
