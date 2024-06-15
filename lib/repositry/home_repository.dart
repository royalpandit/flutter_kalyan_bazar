 

import 'package:kalyanbazar/data/network/base_api_services.dart';
import 'package:kalyanbazar/data/network/network_api_services.dart';
import 'package:kalyanbazar/models/list_resource_model.dart';
import 'package:kalyanbazar/res/widget/api_urls.dart';

class HomeRepository {
  BaseApiServices apiServices = NetworkApiServices();
  Future<ListResourceModel> homeScreenApi() async {
    dynamic response = await apiServices.getApiResponse(AppUrls.baseUrl);
    try {
      return response = ListResourceModel.fromJson(response);
    } catch (e) {
      throw e;
    }
  }



  Future<ListResourceModel> homesScreenApi() async {
    dynamic response = await apiServices.getApiResponse(AppUrls.kalDashboardImageSlider);
    try {
      return response = ListResourceModel.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
