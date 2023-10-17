import 'package:dio/dio.dart';
import 'package:e_learning_app/constants/end_points.dart';
import 'package:e_learning_app/data/local/shared_preference.dart';


class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseURL,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData(
      {required String url, required Map<String, dynamic> query}) async {
    return await dio!.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> body,
  }) async {
    dio!.options.headers = {
      'Accept': 'application/json',
      "Content-type": "application/json",
      'Authorization': "Bearer ${UserDataFromStorage.userTokenFromStorage}",
    };
    return await dio!.post(url, data: body);
  }
}