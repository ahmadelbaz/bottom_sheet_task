import 'package:bottom_sheet_task_ahmad_elbaz/providers/reservation_provider.dart';
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
    final reservationProvider = ref.watch(asyncMessageProvider);
    return switch (reservationProvider) {
      AsyncData() => Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 375, maxHeight: 700),
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
        ),
      AsyncError() => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Error: Something went wrong.'),
              heightSpace(AppSizes.s30),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(asyncMessageProvider);
                },
                child: const Text('Try Again'),
              ),
            ],
          ),
        ),
      _ => const Center(child: CircularProgressIndicator()),
    };
    // return ;
  }
}
