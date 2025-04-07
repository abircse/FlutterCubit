
import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient(this.dio);

  Future<Response> get(String url) async {
    try {
      return await dio.get(url);
    } catch (e) {
      throw Exception("Network Error: $e");
    }
  }
}