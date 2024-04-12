import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomBottomSheet extends ConsumerWidget {
  final Widget child;
  final ScrollController? scrollController;

  const CustomBottomSheet({
    required this.child,
    Color? dragHandlerColor,
    this.scrollController,
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSizes.s20)),
      ),
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
