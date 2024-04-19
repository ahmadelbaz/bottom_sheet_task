import 'package:bottom_sheet_task_ahmad_elbaz/providers/all_providers.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/theme_manager_dark.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/theme_manager_light.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp._internal();

  static const _instance = MyApp._internal();

  factory MyApp() => _instance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ref.watch(isLightStateProvider)
          ? getLightApplicationTheme()
          : getDarkApplicationTheme(),
      home: const HomeScreen(),
    );
  }
}
