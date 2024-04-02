import 'package:bottom_sheet_task_ahmad_elbaz/providers/reservation_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomBottomSheet extends ConsumerWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservationProvider = ref.watch(asyncMessageProvider);
    return BottomSheet(
      onClosing: () {},
      builder: (BuildContext context) {
        return switch (reservationProvider) {
          AsyncData(:final value) => ListView.builder(
              itemCount: value.length,
              itemBuilder: (context, index) {
                return Center(child: Text(value[index].id.toString()));
              },
            ),
          AsyncError(:final error) => Center(child: Text('Error: $error')),
          _ => const Center(child: CircularProgressIndicator()),
        };
      },
    );
  }
}
