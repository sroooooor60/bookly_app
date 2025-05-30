import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var respons = await dio.get('$_baseUrl$endPoint');
    return respons.data;
  }
}
