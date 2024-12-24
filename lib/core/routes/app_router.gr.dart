// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart' as _i14;
import 'package:ngo_app/core/common_widgets/bottom_navbar_widget.dart' as _i1;
import 'package:ngo_app/features/auth/ui/create_new_password_screen.dart'
    as _i2;
import 'package:ngo_app/features/auth/ui/forgot_password_screen.dart' as _i4;
import 'package:ngo_app/features/auth/ui/login_screen.dart' as _i6;
import 'package:ngo_app/features/auth/ui/otp_verification_screen.dart' as _i8;
import 'package:ngo_app/features/auth/ui/register_screen_widget.dart' as _i10;
import 'package:ngo_app/features/home/ui/drawer_screen.dart' as _i3;
import 'package:ngo_app/features/home/ui/home_screen.dart' as _i5;
import 'package:ngo_app/features/notification/ui/notification_screen.dart'
    as _i7;
import 'package:ngo_app/features/profile/ui/profile_screen.dart' as _i9;
import 'package:ngo_app/features/search/ui/search_screen.dart' as _i11;

/// generated route for
/// [_i1.BottomNavbarWidgetScreen]
class BottomNavbarWidgetRoute
    extends _i12.PageRouteInfo<BottomNavbarWidgetRouteArgs> {
  BottomNavbarWidgetRoute({
    _i13.Key? key,
    _i14.ZoomDrawerController? zoomDrawerController,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          BottomNavbarWidgetRoute.name,
          args: BottomNavbarWidgetRouteArgs(
            key: key,
            zoomDrawerController: zoomDrawerController,
          ),
          initialChildren: children,
        );

  static const String name = 'BottomNavbarWidgetRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BottomNavbarWidgetRouteArgs>(
          orElse: () => const BottomNavbarWidgetRouteArgs());
      return _i1.BottomNavbarWidgetScreen(
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

  final _i13.Key? key;

  final _i14.ZoomDrawerController? zoomDrawerController;

  @override
  String toString() {
    return 'BottomNavbarWidgetRouteArgs{key: $key, zoomDrawerController: $zoomDrawerController}';
  }
}

/// generated route for
/// [_i2.CreateNewPasswordScreen]
class CreateNewPasswordRoute extends _i12.PageRouteInfo<void> {
  const CreateNewPasswordRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CreateNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateNewPasswordRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreateNewPasswordScreen();
    },
  );
}

/// generated route for
/// [_i3.DrawerScreen]
class DrawerRoute extends _i12.PageRouteInfo<void> {
  const DrawerRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DrawerRoute.name,
          initialChildren: children,
        );

  static const String name = 'DrawerRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.DrawerScreen();
    },
  );
}

/// generated route for
/// [_i4.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i12.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.ForgotPasswordScreen();
    },
  );
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i13.Key? key,
    required _i14.ZoomDrawerController? drawerController,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            drawerController: drawerController,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>();
      return _i5.HomeScreen(
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

  final _i13.Key? key;

  final _i14.ZoomDrawerController? drawerController;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, drawerController: $drawerController}';
  }
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.LoginScreen();
    },
  );
}

/// generated route for
/// [_i7.NotificationScreen]
class NotificationRoute extends _i12.PageRouteInfo<void> {
  const NotificationRoute({List<_i12.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i7.NotificationScreen();
    },
  );
}

/// generated route for
/// [_i8.OtpVerificationScreen]
class OtpVerificationRoute extends _i12.PageRouteInfo<void> {
  const OtpVerificationRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OtpVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpVerificationRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.OtpVerificationScreen();
    },
  );
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i10.RegisterScreenWidget]
class RegisterRouteWidget extends _i12.PageRouteInfo<void> {
  const RegisterRouteWidget({List<_i12.PageRouteInfo>? children})
      : super(
          RegisterRouteWidget.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRouteWidget';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.RegisterScreenWidget();
    },
  );
}

/// generated route for
/// [_i11.SearchScreen]
class SearchRoute extends _i12.PageRouteInfo<void> {
  const SearchRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.SearchScreen();
    },
  );
}
