import 'package:bottom_sheet_task_ahmad_elbaz/providers/reservation_provider.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservationProvider = ref.watch(asyncMessageProvider);

    // return const Scaffold(
    //   body: HomeScreenBody(),
    // );
    return switch (reservationProvider) {
      AsyncData(:final value) => const Scaffold(
          body: HomeScreenBody(),
        ),
      AsyncError(:final error) => Center(child: Text('Error: $error')),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }
}
