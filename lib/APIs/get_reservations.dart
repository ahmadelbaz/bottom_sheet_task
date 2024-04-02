import 'package:bottom_sheet_task_ahmad_elbaz/services/dio_service.dart';

Future<Map<String, dynamic>> fetchReservations() async {
  // try {
  final response = await DioService().dio.get(''); // Make the GET request

  if (response.statusCode == 200) {
    // print('response ${response.data}');
    // print(
    //     'convert.jsonDecode(response.data) ${convert.jsonDecode(response.data)}');
    // final decodedData =
    //     convert.jsonDecode(response.data) as Map<String, dynamic>;
    // print('decodedData $decodedData');
    return response.data;
  } else {
    print(response.statusMessage); // Log the error message
    throw Exception('Failed to fetch data');
  }
  // } on DioError catch (e) {
  //   print(e.error); // Log the DioError details
  //   throw Exception('Failed to fetch data');
  // }
}
