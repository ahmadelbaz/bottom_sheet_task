import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/reusable_widgets/custom_elevated_button.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/reusable_widgets/custom_text_button.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/reusable_widgets/theme_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenBody extends ConsumerWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: AppSizes.s375),
        child: Column(
          children: [
            heightSpace(AppSizes.s50),
            const ThemeBar(),
            const Spacer(),
            const CustomElevatedButton(text: AppStrings.openReservation),
            heightSpace(AppSizes.s20),
            const CustomTextButton(
              text: AppStrings.showIosTicket,
              borderWidth: AppSizes.s1,
            ),
            heightSpace(AppSizes.s20),
            const CustomTextButton(
              text: AppStrings.showAndroidTicket,
              borderWidth: 0,
            ),
            heightSpace(AppSizes.s50),
          ],
        ),
      ),
    );
  }
}
