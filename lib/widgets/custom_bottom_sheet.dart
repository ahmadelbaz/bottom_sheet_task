import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomBottomSheet extends ConsumerWidget {
  final Widget child;
  final Color? dragHandlerColor;
  const CustomBottomSheet(
      {required this.child, this.dragHandlerColor, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSizes.s20)),
      ),
      child: Stack(
        children: [
          // Transparent background for the main content area
          Positioned.fill(
            child: Container(
              color: Colors.transparent,
              child: child,
            ),
          ),
          // Grab bar with custom color
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            height: AppSizes.s30, // Adjust grab bar height as needed
            child: Container(
              color: dragHandlerColor!.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
