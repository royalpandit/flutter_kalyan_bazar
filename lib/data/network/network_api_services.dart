import 'dart:convert';
import 'dart:io';
import 'package:kalyanbazar/data/app_exceptions.dart';
import 'package:kalyanbazar/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
import 'package:kalyanbazar/res/widget/api_urls.dart';

class NetworkApiServices extends BaseApiServices {
  final headers = <String, String>{
    "Content-Type": "application/json; charset=UTF-8"
  };

  //For Get Api's
  @override
  Future postApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    String username = 'admin';
    String password = 'Admin@123';
    String basicAuth =
        'Basic ' + base64.encode(utf8.encode('$username:$password'));
    print("url=>${url}");
    print("body data=>${data}");
    try {
      http.Response response =
          await http.post(Uri.parse(url), body: jsonEncode(data), headers: {
        // "Accept": "application/json",
        "Content-Type": "application/json; charset=UTF-8",
        // HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
        //  HttpHeaders.authorizationHeader: AppUrls.basicAuth,
        'authorization': basicAuth,
        'AccessToken': "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo1NX0.GQfjFinteGebNO-gom2Kna6GhoDFxeerPpldrdXJ13A"
      }).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(message: "No Internet Conection");
    }

    //if true then it'll return jso response
    return responseJson;
  }

  //For post Api's
  @override
  Future getApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(message: "No Internet Conection");
    }

    //if true then it'll return jso respose
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(message: response.body.toString());
      case 401:
        throw UnauthorizedException(message: response.body.toString());
      default:
        throw FetchDataException(
            message: "Error occured while communicating with server" +
                "with ctatus code" +
                response.statusCode.toString());
    }
  }
}


/* 
class NetworkApiServices extends BaseApiServices {
  final header = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };
  final headers = <String, String>{
    "Content-Type": "application/json; charset=UTF-8"
  };
  @override
  Future getGetApiResponse(String url) async {
    dynamic responsejson;

    try {
      final response = await http.get(Uri.parse(url), headers: {
        "Accept": "application/json"
                // HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
        //  HttpHeaders.authorizationHeader: AppUrls.basicAuth,
      }).timeout(const Duration(seconds: 10));
      responsejson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(message: "No Internet Conection");
    }

    return responsejson;
  }
 @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    print("url=>${url}");
    print("body data=>${data}");
    try {
      http.Response response = await http
          .post(Uri.parse(url), body: jsonEncode(data), headers: headers)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(message: "No Internet Conection");
    }

    //if true then it'll return jso response
    return responseJson;
  }
/*   @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responsejson;
      print("responseNetworkApin==>>URL>>$url");

      print("responseNetworkApin==>>DATA>>$data");

    try {
      http.Response response = await http.post(Uri.parse(url),headers: {
        "Accept": "application/json"
                // HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
        //  HttpHeaders.authorizationHeader: AppUrls.basicAuth,
      }, body: jsonEncode(data))
          .timeout(const Duration(seconds: 10));
      responsejson = responseJson(response);
            print("responseNetworkApin==>>JSON>>$responsejson");

     } on SocketException {
      throw InternetException("NO Internet is available right now");
    }

    return responsejson;
  }
 */

dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(message: response.body.toString());
      case 401:
        throw UnauthorizedException(message: response.body.toString());
      default:
        throw FetchDataException(
            message: "Error occured while communicating with server" +
                "with ctatus code" +
                response.statusCode.toString());
    }
  }
 /*  dynamic responseJson(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        throw BadRequestException("achi request nhi hai yeh");
      default:
        throw InternetException(
            "${response.statusCode} : ${response.reasonPhrase}");
    }
  } */
}
 */