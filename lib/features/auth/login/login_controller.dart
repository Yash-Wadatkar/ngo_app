import 'package:get/get.dart';
import 'package:ngo_app/core/constants/api_constant.dart';

import '../../../core/network/api_service.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  void login({required String email, required String password}) async {
    isLoading.value = true;
    try {
      final response =
          await ApiServices().postApiCall(url: ApiConstant.logIn, body: {
        "user_name": email,
        "password": password,
      });
      if (response != null && response['statusCode'] == 200) {}
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }
}
