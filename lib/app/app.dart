import 'package:bottom_sheet_task_ahmad_elbaz/resources/theme_manager_dark.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static const _instance = MyApp._internal();

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getDarkApplicationTheme(), // TODO : Manage Themes
      home: const HomeScreen(),
    );
  }
}
