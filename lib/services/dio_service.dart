import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:dio/dio.dart';

class DioService {
  // Private constructor
  DioService._privateConstructor();

  // Static instance of Dio
  static final DioService _instance = DioService._privateConstructor();

  // Factory constructor to return the same instance
  factory DioService() {
    return _instance;
  }

  // Dio object
  final Dio dio = Dio();

  // Initialize Dio configurations
  void init({
    String? baseUrl,
    int connectTimeout = 20,
    int receiveTimeout = 20,
    Map<String, dynamic>? headers,
    String? baseUrlResolver,
  }) {
    dio.options.baseUrl = baseUrl ?? dio.options.baseUrl;
    dio.options.connectTimeout = Duration(seconds: connectTimeout);
    dio.options.receiveTimeout = Duration(seconds: receiveTimeout);
    dio.options.headers
        .addAll(headers ?? {'Authorization': 'Bearer ${AppNetwork.token}'});
    dio.options.baseUrl = baseUrlResolver ?? AppNetwork.baseUrl;
  }
}
