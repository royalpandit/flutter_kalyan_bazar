import 'package:kalyanbazar/data/network/network_api_services.dart';

import 'package:kalyanbazar/res/widget/api_urls.dart';

class AuthRepository {
  NetworkApiServices apiServices = NetworkApiServices();

  Future<dynamic> apiLogin(dynamic data) async {
    try {
      final response = await apiServices.postApiResponse(AppUrls.getOtp, data);

      return response;
    } catch (e) {
      rethrow; //Big Brain
    }
  }

  Future<dynamic> LoginApi(dynamic data) async {
    dynamic response =
        await apiServices.postApiResponse(AppUrls.kalLogin, data);
    try {
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> RegisterApi(dynamic data) async {
    dynamic response =
        await apiServices.postApiResponse(AppUrls.kalRegister, data);
    try {
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> apiGetOtp(dynamic data) async {
    dynamic response = await apiServices.postApiResponse(AppUrls.getOtp, data);

    try {
      print("codetime${response['message']}");
      // return ResponseGet.fromJson(response);

      print("domdom==>>>$response");
      return response;
    } catch (e) {
      rethrow; //Big Brain
    }
  }

  Future<dynamic> signUp(dynamic data) async {
    try {
      final response =
          await apiServices.postApiResponse(AppUrls.registerEndPoint, data);
      return response;
    } catch (e) {
      rethrow; //Big Brain
    }
  }
}
