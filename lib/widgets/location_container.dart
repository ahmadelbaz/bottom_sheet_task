import 'package:bottom_sheet_task_ahmad_elbaz/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocationContainer extends ConsumerWidget {
  const LocationContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 110,
      color: ColorManager.grey4,
    );
  }
}
