import 'package:bottom_sheet_task_ahmad_elbaz/resources/theme_manager_light.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getDarkApplicationTheme(), // TODO : Manage Themes
      home: const HomeScreen(),
    );
  }
}
