import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:kalyanbazar/data/response/api_response.dart';
import 'package:kalyanbazar/models/list_resource_model.dart';
 import 'package:kalyanbazar/repositry/home_repository.dart';
 

class HomeViewViewModel with ChangeNotifier {
  List<int> ratings = [
    2,
    10,
    1,
    6,
    5,
    3,
  ];
  final myRepo = HomeRepository();
  //Response loading
  ApiResponse<ListResourceModel> listResponse = ApiResponse.loading();

//Setter method to pass a generic response
  setListResponse(ApiResponse<ListResourceModel> response) {
    listResponse = response;
    notifyListeners();
  }
//  kalDashboardImageSlider
  Future<void> fetchResourcesListApi() async {
    setListResponse(ApiResponse.loading());
    myRepo.homeScreenApi().then((value) {
      setListResponse(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        setListResponse(ApiResponse.error(error.toString()));
        print(error);
      }
    });
  }
  Future<void> homeResourcesListApi() async {
    setListResponse(ApiResponse.loading());
    myRepo.homesScreenApi().then((value) {
      setListResponse(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        setListResponse(ApiResponse.error(error.toString()));
        print(error);
      }
    });
  }
}
