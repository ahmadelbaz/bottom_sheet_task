import 'package:bottom_sheet_task_ahmad_elbaz/app/app.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/services/dio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  DioService().init();
  runApp(ProviderScope(child: MyApp()));
}
