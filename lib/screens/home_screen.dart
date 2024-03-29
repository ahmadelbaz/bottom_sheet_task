import 'package:bottom_sheet_task_ahmad_elbaz/resources/color_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/change_theme_bar.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          const ChangeThemeBar(),
          const Spacer(),
          const CustomElevatedButton(text: AppStrings.openReservation),
          heightSpace(AppSizes.s20),
          const CustomElevatedButton(
            text: AppStrings.showIosTicket,
            backgorundColor: ColorManager.darkBackground,
            textColor: ColorManager.darkPrimary,
            borderColor: ColorManager.darkPrimary,
          ),
          heightSpace(AppSizes.s20),
          const CustomElevatedButton(
            text: AppStrings.showAndroidTicket,
            backgorundColor: ColorManager.darkBackground,
            textColor: ColorManager.darkPrimary,
          ),
          heightSpace(AppSizes.s50),
        ],
      ),
    );
  }
}
