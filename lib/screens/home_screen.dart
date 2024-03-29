import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/change_theme_bar.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Column(
        children: [
          ChangeThemeBar(),
          Spacer(),
          CustomElevatedButton(text: AppStrings.openReservation),
          CustomElevatedButton(text: AppStrings.showIosTicket),
          CustomElevatedButton(text: AppStrings.showAndroidTicket),
        ],
      ),
    );
  }
}
