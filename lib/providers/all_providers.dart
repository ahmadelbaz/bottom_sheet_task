import 'package:bottom_sheet_task_ahmad_elbaz/resources/theme_manager_dark.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeStateProvider = StateProvider<ThemeData>((ref) {
  return getDarkApplicationTheme();
});
