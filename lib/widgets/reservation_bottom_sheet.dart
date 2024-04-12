import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReservationBottomSheet extends ConsumerWidget {
  final ScrollController? scrollController;
  const ReservationBottomSheet({this.scrollController, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomBottomSheet(
      scrollController: scrollController,
      child: Stack(
        children: [
          ListView(
            controller: scrollController,
            shrinkWrap: true,
            children: [
              Container(
                color: Colors.teal,
                height: 300,
                // width: double.infinity,
              )
            ],
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
                    .surfaceTintColor!
                    .withOpacity(0.8),
                child: Center(
                  child: Container(
                    width: AppSizes.s50,
                    height: AppSizes.s6,
                    decoration: BoxDecoration(
                      color: Theme.of(context).bottomSheetTheme.backgroundColor,
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
