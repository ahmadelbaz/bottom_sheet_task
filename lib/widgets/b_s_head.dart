import 'package:bottom_sheet_task_ahmad_elbaz/providers/all_providers.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/color_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomSheetHead extends ConsumerWidget {
  final ScrollController? scrollController;
  final Color color;
  final bool hasTrailing;
  const BottomSheetHead(
      {required this.scrollController,
      this.color = ColorManager.darkGrey3,
      this.hasTrailing = false,
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
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: AppSizes.s50,
                  height: AppSizes.s6,
                  decoration: BoxDecoration(
                    color:
                        Theme.of(context).bottomSheetTheme.modalBackgroundColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSizes.s10),
                    ),
                  ),
                ),
              ),
              ref.watch(isLightStateProvider) && hasTrailing
                  ? Positioned(
                      top: AppSizes.s14,
                      right: AppSizes.s24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SmallCircle(),
                          widthSpace(AppSizes.s4),
                          const SmallCircle(),
                          widthSpace(AppSizes.s4),
                          const SmallCircle(),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class SmallCircle extends ConsumerWidget {
  const SmallCircle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox(
      width: AppSizes.s4,
      height: AppSizes.s4,
      child: CircleAvatar(
        backgroundColor: ColorManager.black,
      ),
    );
  }
}
