import 'package:bottom_sheet_task_ahmad_elbaz/services/dio_service.dart';
import 'package:dio/dio.dart';

Future<Map<String, dynamic>> fetchReservations() async {
  try {
    final response = await DioService().dio.get('');

    if (response.statusCode == 200) {
      return response.data;
    } else {
      print(
          'response.statusMessage ${response.statusMessage}'); // Log the error message
      throw Exception('Failed to fetch data');
    }
  } on DioException catch (e) {
    print(e
        .error); // Log the DioError details// The request was made and the server responded with a status code
    // that falls out of the range of 2xx and is also not 304.
    if (e.response != null) {
      print(e.response!.data);
      print(e.response!.headers);
      print(e.response!.requestOptions);
    } else {
      // Something happened in setting up or sending the request that triggered an Error
      print(e.requestOptions);
      print(e.message);
    }
    throw Exception('Failed to fetch data');
  }
}
