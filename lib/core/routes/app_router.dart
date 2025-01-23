import 'package:auto_route/auto_route.dart';
import 'package:ngo_app/core/common_widgets/bottom_navbar_widget.dart';
import 'package:ngo_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [

    AutoRoute(
           page: BottomNavbarWidgetRoute.page,
           initial: true,
           children: [
             AutoRoute(page: HomeRoute.page),
             AutoRoute(page: SearchRoute.page),
             AutoRoute(page: NotificationRoute.page),
             AutoRoute(page: ProfileRoute.page),
           ],
         ),


        /// Routes for Auth Screens
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRouteWidget.page),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(page: CreateNewPasswordRoute.page),
        AutoRoute(page: OtpVerificationRoute.page),
        AutoRoute(page: OtpVerificationRoute.page),
        AutoRoute(page: ChatListingRoute.page),
        AutoRoute(page: MessageRoute.page),
        AutoRoute(page: ChatProfileRoute.page),
      ];
}
