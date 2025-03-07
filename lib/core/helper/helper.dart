import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_strings.dart';

class SPHelper {
  static Future<void> setAccessToken(String token) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(AppStrings.accessToken, token);
  }

  static Future<String?> getAccessToken() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final String? accessToken =
        sharedPreferences.getString(AppStrings.accessToken);
    return accessToken;
  }
}
