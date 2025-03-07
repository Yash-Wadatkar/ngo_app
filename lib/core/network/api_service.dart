import 'dart:convert';

import 'package:encrypt/encrypt.dart';
import "package:http/http.dart" as http;
import 'package:ngo_app/core/constants/app_strings.dart';

import '../common_widgets/common_response_widget.dart';
import '../constants/error_constant.dart';
import '../helper/helper.dart';
import 'internet_service.dart';

class ApiServices {
  Future<bool> checkInternetConnection() async {
    bool? isInternetAvailable = await InternetService().getInternetStatus();
    if (isInternetAvailable == false) {
      CommonSnackBarWithResponse(
          title: ErrorConstant.internetNotAvailable, isSuccessDialog: false);
      return false;
    }
    return true;
  }

  Future<dynamic> getApiCall({
    required String url,
    bool isShowMessage = false,
    bool shouldHandleError = true,
    bool shouldShowSnackBar = true,
  }) async {
    if (await checkInternetConnection()) {
      String? accessToken = await SPHelper.getAccessToken();
      try {
        final response = await http.get(
          Uri.parse(url),
          headers: {'x-access-token': accessToken ?? ''},
        ).timeout(const Duration(seconds: 25));

        dynamic jsonResponse = jsonDecode(response.body);
        dynamic decryptedResponse = await decryptData(body: jsonResponse);

        if (response.statusCode == 200) {
          if (decryptedResponse["success"] == true &&
              isShowMessage &&
              shouldShowSnackBar) {
            CommonSnackBarWithResponse(title: jsonResponse["message"]);
          }
          if (jsonResponse["success"] == false && shouldShowSnackBar) {
            CommonSnackBarWithResponse(
                title: jsonResponse["error_message"], isSuccessDialog: false);
          }
          return jsonResponse;
        } else {
          if (shouldHandleError && shouldShowSnackBar) {
            return CommonSnackBarWithResponse(
                title: jsonResponse["error_message"], isSuccessDialog: false);
          }
          return jsonResponse;
        }
      } catch (error) {
        if (shouldShowSnackBar) {
          return CommonSnackBarWithResponse(
              title: ErrorConstant.somethingWentWrong, isSuccessDialog: false);
        }
        return null;
      }
    }
    return null;
  }

  Future<dynamic> postApiCall({
    required String url,
    required Map<String, dynamic> body,
    bool shouldHandleError = true,
    bool shouldShowSnackBar = true,
  }) async {
    if (await checkInternetConnection()) {
      String? accessToken = await SPHelper.getAccessToken();
      var encryptedBody = encryptData(body);

      try {
        final response = await http
            .post(
              Uri.parse(url),
              headers: {
                'x-access-token': accessToken ?? '',
                // 'Content-Type': 'application/json'
              },
              body: jsonEncode(encryptedBody),
            )
            .timeout(const Duration(seconds: 25));

        dynamic jsonResponse = jsonDecode(response.body);
        dynamic decryptedResponse = await decryptData(body: jsonResponse);

        return handleApiResponse(
            decryptedResponse, shouldHandleError, shouldShowSnackBar);
      } catch (e) {
        return handleApiError(shouldShowSnackBar);
      }
    }
    return null;
  }

  Future<dynamic> putApiCall({
    required String url,
    required Map<String, dynamic> body,
    bool shouldHandleError = true,
    bool shouldShowSnackBar = true,
  }) async {
    if (await checkInternetConnection()) {
      String? accessToken = await SPHelper.getAccessToken();
      var encryptedBody = encryptData(body);

      try {
        final response = await http
            .put(
              Uri.parse(url),
              headers: {
                'x-access-token': accessToken ?? '',
                'Content-Type': 'application/json'
              },
              body: jsonEncode(encryptedBody),
            )
            .timeout(const Duration(seconds: 60));
        dynamic jsonResponse = jsonDecode(response.body);
        dynamic decryptedResponse = await decryptData(body: jsonResponse);

        return handleApiResponse(
            decryptedResponse, shouldHandleError, shouldShowSnackBar);
      } catch (e) {
        return handleApiError(shouldShowSnackBar);
      }
    }
    return null;
  }

  Future<dynamic> deleteApiCall({required String url}) async {
    if (await checkInternetConnection()) {
      String? accessToken = await SPHelper.getAccessToken();
      try {
        final response = await http.delete(
          Uri.parse(url),
          headers: {'x-access-token': accessToken ?? ''},
        ).timeout(const Duration(seconds: 25));
        dynamic jsonResponse = jsonDecode(response.body);
        dynamic decryptedResponse = await decryptData(body: jsonResponse);
        return handleApiResponse(decryptedResponse, true, true);
      } catch (e) {
        return handleApiError(true);
      }
    }
    return null;
  }

  Future<dynamic> decryptData({required Map<String, dynamic> body}) async {
    /// Extract the encrypted response body from the map.
    final jsonResponse = body["resBody"];

    /// Retrieve encryption key and IV from StringConstants.
    String hexKey = AppStrings.encryptedKey;
    String hexIV = AppStrings.encryptedIV;

    /// Create Key and IV instances for decryption.
    final Key secretKey = Key.fromBase16(hexKey);
    final IV iv = IV.fromBase16(hexIV);

    /// Create Encrypted instance with AES decryption parameters.
    final Encrypter encrypted =
        Encrypter(AES(secretKey, mode: AESMode.cbc, padding: "PKCS7"));

    /// Extract the cipher text from the encrypted response.
    final String cipherText = jsonResponse.substring(32);

    /// Decrypt the cipher text using the specified key and IV.
    final decryptedData =
        encrypted.decrypt(Encrypted.fromBase16(cipherText), iv: iv);

    /// Parse the decrypted data as JSON.
    var finalResponse = jsonDecode(decryptedData);

    /// Return the final decrypted response.
    return finalResponse;
  }

  Map<String, dynamic> encryptData(Map<String, dynamic> body) {
    String hexKey = AppStrings.encryptedKey;
    String hexIV = AppStrings.encryptedIV;
    String subIV = hexIV.substring(0, 32);

    final Key secretKey = Key.fromBase16(hexKey);
    final IV iv = IV.fromBase16(hexIV);
    final Encrypter encrypted =
        Encrypter(AES(secretKey, mode: AESMode.cbc, padding: 'PKCS7'));

    final String jsonText = json.encode(body);
    final encryptedJson = encrypted.encrypt(jsonText, iv: iv);

    return {"reqBody": subIV + encryptedJson.base16};
  }

  dynamic handleApiResponse(
      dynamic response, bool shouldHandleError, bool shouldShowSnackBar) {
    if (response["success"] == true) {
      if (shouldShowSnackBar) {
        CommonSnackBarWithResponse(title: response["message"]);
      }
      return response;
    } else {
      if (shouldHandleError && shouldShowSnackBar) {
        return CommonSnackBarWithResponse(
            title: response["error_message"], isSuccessDialog: false);
      }
      return response;
    }
  }

  dynamic handleApiError(bool shouldShowSnackBar) {
    if (shouldShowSnackBar) {
      return CommonSnackBarWithResponse(
          title: ErrorConstant.somethingWentWrong, isSuccessDialog: false);
    }
    return null;
  }
}
