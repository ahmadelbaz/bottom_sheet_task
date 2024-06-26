import 'package:bottom_sheet_task_ahmad_elbaz/providers/reservation_provider.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/screens/home/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservationProvider = ref.watch(asyncMessageProvider);
    return Scaffold(
      body: switch (reservationProvider) {
        AsyncData() => const HomeScreenBody(),
        AsyncError() => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(AppStrings.errorSomethingWentWrong),
                heightSpace(AppSizes.s30),
                ElevatedButton(
                  onPressed: () {
                    ref.invalidate(asyncMessageProvider);
                  },
                  child: const Text(AppStrings.tryAgain),
                ),
              ],
            ),
          ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
