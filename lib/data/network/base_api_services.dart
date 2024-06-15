abstract class BaseApiServices {
 /*  Future<dynamic> getGetApiResponse(String url);
  Future<dynamic> getPostApiResponse(String url, dynamic data);
 */
Future<dynamic> postApiResponse(String url, dynamic data);

  Future<dynamic> getApiResponse(String url);
}