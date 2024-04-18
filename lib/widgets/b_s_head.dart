import 'package:bottom_sheet_task_ahmad_elbaz/resources/color_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomSheetHead extends ConsumerWidget {
  final ScrollController? scrollController;
  final Color color;
  const BottomSheetHead(
      {required this.scrollController,
      this.color = ColorManager.darkGrey3,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
      height: AppSizes.s30,
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          if (notification is ScrollUpdateNotification) {
            scrollController?.jumpTo(notification.metrics.pixels);
          }
          return true;
        },
        child: Container(
          color: color,
          child: Center(
            child: Container(
              width: AppSizes.s50,
              height: AppSizes.s6,
              decoration: BoxDecoration(
                color: Theme.of(context).bottomSheetTheme.modalBackgroundColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(AppSizes.s10),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
