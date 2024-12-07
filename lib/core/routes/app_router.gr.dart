// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:ngo_app/features/auth/ui/create_new_password_screen.dart'
    as _i1;
import 'package:ngo_app/features/auth/ui/forgot_password_screen.dart' as _i2;
import 'package:ngo_app/features/auth/ui/login_screen.dart' as _i3;
import 'package:ngo_app/features/auth/ui/otp_verification_screen.dart' as _i4;
import 'package:ngo_app/features/auth/ui/register_screen_widget.dart' as _i5;

/// generated route for
/// [_i1.CreateNewPasswordScreen]
class CreateNewPasswordRoute extends _i6.PageRouteInfo<void> {
  const CreateNewPasswordRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CreateNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateNewPasswordRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.CreateNewPasswordScreen();
    },
  );
}

/// generated route for
/// [_i2.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i6.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.ForgotPasswordScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginScreen();
    },
  );
}

/// generated route for
/// [_i4.OtpVerificationScreen]
class OtpVerificationRoute extends _i6.PageRouteInfo<void> {
  const OtpVerificationRoute({List<_i6.PageRouteInfo>? children})
      : super(
          OtpVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpVerificationRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.OtpVerificationScreen();
    },
  );
}

/// generated route for
/// [_i5.RegisterScreenWidget]
class RegisterRouteWidget extends _i6.PageRouteInfo<void> {
  const RegisterRouteWidget({List<_i6.PageRouteInfo>? children})
      : super(
          RegisterRouteWidget.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRouteWidget';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.RegisterScreenWidget();
    },
  );
}
