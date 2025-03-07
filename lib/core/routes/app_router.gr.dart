// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter/material.dart' as _i22;
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart' as _i23;
import 'package:ngo_app/core/common_widgets/bottom_navbar_widget.dart' as _i2;
import 'package:ngo_app/core/common_widgets/common_dialog.dart' as _i5;
import 'package:ngo_app/features/auth/login/login_screen.dart' as _i10;
import 'package:ngo_app/features/auth/ui/create_new_password_screen.dart'
    as _i6;
import 'package:ngo_app/features/auth/ui/forgot_password_screen.dart' as _i8;
import 'package:ngo_app/features/auth/ui/otp_verification_screen.dart' as _i13;
import 'package:ngo_app/features/auth/ui/register_screen_widget.dart' as _i15;
import 'package:ngo_app/features/chat_module/chat_listing_screen.dart' as _i3;
import 'package:ngo_app/features/chat_module/chat_profile_screen/chat_profile_screen.dart'
    as _i4;
import 'package:ngo_app/features/chat_module/mesage_screen.dart' as _i11;
import 'package:ngo_app/features/home/ui/drawer_screen.dart' as _i7;
import 'package:ngo_app/features/home/ui/home_screen.dart' as _i9;
import 'package:ngo_app/features/notification/ui/notification_screen.dart'
    as _i12;
import 'package:ngo_app/features/profile/ui/profile_screen.dart' as _i14;
import 'package:ngo_app/features/request_tracking/request_tracking_view/request_tracking_details/view/request_tracking_details_view.dart'
    as _i16;
import 'package:ngo_app/features/request_tracking/request_tracking_view/request_tracking_view.dart'
    as _i17;
import 'package:ngo_app/features/score_board/ui/score_board_screen.dart'
    as _i18;
import 'package:ngo_app/features/search/ui/search_screen.dart' as _i19;
import 'package:ngo_app/features/setting/view/account_info/account_info_screen.dart'
    as _i1;
import 'package:ngo_app/features/setting/view/setting_screen.dart' as _i20;

/// generated route for
/// [_i1.AccountInfoScreen]
class AccountInfoRoute extends _i21.PageRouteInfo<void> {
  const AccountInfoRoute({List<_i21.PageRouteInfo>? children})
      : super(
          AccountInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountInfoRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountInfoScreen();
    },
  );
}

/// generated route for
/// [_i2.BottomNavbarWidgetScreen]
class BottomNavbarWidgetRoute
    extends _i21.PageRouteInfo<BottomNavbarWidgetRouteArgs> {
  BottomNavbarWidgetRoute({
    _i22.Key? key,
    _i23.ZoomDrawerController? zoomDrawerController,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          BottomNavbarWidgetRoute.name,
          args: BottomNavbarWidgetRouteArgs(
            key: key,
            zoomDrawerController: zoomDrawerController,
          ),
          initialChildren: children,
        );

  static const String name = 'BottomNavbarWidgetRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BottomNavbarWidgetRouteArgs>(
          orElse: () => const BottomNavbarWidgetRouteArgs());
      return _i2.BottomNavbarWidgetScreen(
        key: args.key,
        zoomDrawerController: args.zoomDrawerController,
      );
    },
  );
}

class BottomNavbarWidgetRouteArgs {
  const BottomNavbarWidgetRouteArgs({
    this.key,
    this.zoomDrawerController,
  });

  final _i22.Key? key;

  final _i23.ZoomDrawerController? zoomDrawerController;

  @override
  String toString() {
    return 'BottomNavbarWidgetRouteArgs{key: $key, zoomDrawerController: $zoomDrawerController}';
  }
}

/// generated route for
/// [_i3.ChatListingScreen]
class ChatListingRoute extends _i21.PageRouteInfo<void> {
  const ChatListingRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ChatListingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatListingRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i3.ChatListingScreen();
    },
  );
}

/// generated route for
/// [_i4.ChatProfileScreen]
class ChatProfileRoute extends _i21.PageRouteInfo<void> {
  const ChatProfileRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ChatProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatProfileRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i4.ChatProfileScreen();
    },
  );
}

/// generated route for
/// [_i5.CommonResponseDialogView]
class CommonResponseDialogView
    extends _i21.PageRouteInfo<CommonResponseDialogViewArgs> {
  CommonResponseDialogView({
    _i22.Key? key,
    String? responseMessage,
    String? statusCode,
    String? buttonText,
    _i22.VoidCallback? onTap,
    double? width,
    double? height,
    String? routePage,
    String? loadingMessage,
    bool isLoading = false,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          CommonResponseDialogView.name,
          args: CommonResponseDialogViewArgs(
            key: key,
            responseMessage: responseMessage,
            statusCode: statusCode,
            buttonText: buttonText,
            onTap: onTap,
            width: width,
            height: height,
            routePage: routePage,
            loadingMessage: loadingMessage,
            isLoading: isLoading,
          ),
          initialChildren: children,
        );

  static const String name = 'CommonResponseDialogView';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CommonResponseDialogViewArgs>(
          orElse: () => const CommonResponseDialogViewArgs());
      return _i5.CommonResponseDialogView(
        key: args.key,
        responseMessage: args.responseMessage,
        statusCode: args.statusCode,
        buttonText: args.buttonText,
        onTap: args.onTap,
        width: args.width,
        height: args.height,
        routePage: args.routePage,
        loadingMessage: args.loadingMessage,
        isLoading: args.isLoading,
      );
    },
  );
}

class CommonResponseDialogViewArgs {
  const CommonResponseDialogViewArgs({
    this.key,
    this.responseMessage,
    this.statusCode,
    this.buttonText,
    this.onTap,
    this.width,
    this.height,
    this.routePage,
    this.loadingMessage,
    this.isLoading = false,
  });

  final _i22.Key? key;

  final String? responseMessage;

  final String? statusCode;

  final String? buttonText;

  final _i22.VoidCallback? onTap;

  final double? width;

  final double? height;

  final String? routePage;

  final String? loadingMessage;

  final bool isLoading;

  @override
  String toString() {
    return 'CommonResponseDialogViewArgs{key: $key, responseMessage: $responseMessage, statusCode: $statusCode, buttonText: $buttonText, onTap: $onTap, width: $width, height: $height, routePage: $routePage, loadingMessage: $loadingMessage, isLoading: $isLoading}';
  }
}

/// generated route for
/// [_i6.CreateNewPasswordScreen]
class CreateNewPasswordRoute extends _i21.PageRouteInfo<void> {
  const CreateNewPasswordRoute({List<_i21.PageRouteInfo>? children})
      : super(
          CreateNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateNewPasswordRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i6.CreateNewPasswordScreen();
    },
  );
}

/// generated route for
/// [_i7.DrawerScreen]
class DrawerRoute extends _i21.PageRouteInfo<void> {
  const DrawerRoute({List<_i21.PageRouteInfo>? children})
      : super(
          DrawerRoute.name,
          initialChildren: children,
        );

  static const String name = 'DrawerRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i7.DrawerScreen();
    },
  );
}

/// generated route for
/// [_i8.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i21.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i8.ForgotPasswordScreen();
    },
  );
}

/// generated route for
/// [_i9.HomeScreen]
class HomeRoute extends _i21.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i22.Key? key,
    required _i23.ZoomDrawerController? drawerController,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            drawerController: drawerController,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>();
      return _i9.HomeScreen(
        key: args.key,
        drawerController: args.drawerController,
      );
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    required this.drawerController,
  });

  final _i22.Key? key;

  final _i23.ZoomDrawerController? drawerController;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, drawerController: $drawerController}';
  }
}

/// generated route for
/// [_i10.LoginScreen]
class LoginRoute extends _i21.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i22.Key? key,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i10.LoginScreen(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.MessageScreen]
class MessageRoute extends _i21.PageRouteInfo<void> {
  const MessageRoute({List<_i21.PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i11.MessageScreen();
    },
  );
}

/// generated route for
/// [_i12.NotificationScreen]
class NotificationRoute extends _i21.PageRouteInfo<void> {
  const NotificationRoute({List<_i21.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i12.NotificationScreen();
    },
  );
}

/// generated route for
/// [_i13.OtpVerificationScreen]
class OtpVerificationRoute extends _i21.PageRouteInfo<void> {
  const OtpVerificationRoute({List<_i21.PageRouteInfo>? children})
      : super(
          OtpVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpVerificationRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i13.OtpVerificationScreen();
    },
  );
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileRoute extends _i21.PageRouteInfo<void> {
  const ProfileRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i14.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i15.RegisterScreenWidget]
class RegisterRouteWidget extends _i21.PageRouteInfo<void> {
  const RegisterRouteWidget({List<_i21.PageRouteInfo>? children})
      : super(
          RegisterRouteWidget.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRouteWidget';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i15.RegisterScreenWidget();
    },
  );
}

/// generated route for
/// [_i16.RequestTrackingDetailsView]
class RequestTrackingDetailsView
    extends _i21.PageRouteInfo<RequestTrackingDetailsViewArgs> {
  RequestTrackingDetailsView({
    _i22.Key? key,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          RequestTrackingDetailsView.name,
          args: RequestTrackingDetailsViewArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RequestTrackingDetailsView';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RequestTrackingDetailsViewArgs>(
          orElse: () => const RequestTrackingDetailsViewArgs());
      return _i16.RequestTrackingDetailsView(key: args.key);
    },
  );
}

class RequestTrackingDetailsViewArgs {
  const RequestTrackingDetailsViewArgs({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return 'RequestTrackingDetailsViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.RequestTrackingView]
class RequestTrackingView extends _i21.PageRouteInfo<void> {
  const RequestTrackingView({List<_i21.PageRouteInfo>? children})
      : super(
          RequestTrackingView.name,
          initialChildren: children,
        );

  static const String name = 'RequestTrackingView';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i17.RequestTrackingView();
    },
  );
}

/// generated route for
/// [_i18.ScoreBoardScreen]
class ScoreBoardRoute extends _i21.PageRouteInfo<void> {
  const ScoreBoardRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ScoreBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScoreBoardRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i18.ScoreBoardScreen();
    },
  );
}

/// generated route for
/// [_i19.SearchScreen]
class SearchRoute extends _i21.PageRouteInfo<void> {
  const SearchRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i19.SearchScreen();
    },
  );
}

/// generated route for
/// [_i20.SettingScreen]
class SettingRoute extends _i21.PageRouteInfo<void> {
  const SettingRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i21.PageInfo page = _i21.PageInfo(
    name,
    builder: (data) {
      return const _i20.SettingScreen();
    },
  );
}
