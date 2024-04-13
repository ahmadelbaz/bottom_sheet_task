import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomBottomSheet extends ConsumerWidget {
  final Widget child;
  final double? bottomSheetOffset;
  final ScrollController? scrollController;

  const CustomBottomSheet({
    required this.child,
    this.scrollController,
    this.bottomSheetOffset,
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * bottomSheetOffset!,
            decoration: const BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(AppSizes.s20)),
            ),
            child: child,
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            height: AppSizes.s30, // Adjust grab bar height as needed
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification notification) {
                if (notification is ScrollUpdateNotification) {
                  scrollController?.jumpTo(notification.metrics.pixels);
                }
                return true;
              },
              child: Container(
                color: Theme.of(context)
                    .bottomSheetTheme
                    .dragHandleColor!
                    .withOpacity(0.8),
                child: Center(
                  child: Container(
                    width: AppSizes.s50,
                    height: AppSizes.s6,
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .bottomSheetTheme
                          .modalBackgroundColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(AppSizes.s10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
