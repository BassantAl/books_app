import 'package:dio/dio.dart';

class AppService {
  final Dio dio;
  AppService({required this.dio});

  Future<Map<String, dynamic>> get(String url) async {
    var response = await dio.get(url);
    return response.data;
    print(response.data);
  }
}
