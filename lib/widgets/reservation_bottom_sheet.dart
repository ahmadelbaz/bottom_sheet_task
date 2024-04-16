import 'package:bottom_sheet_task_ahmad_elbaz/providers/reservation_provider.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReservationBottomSheet extends ConsumerWidget {
  final ScrollController? scrollController;
  final double? bottomSheetOffset;
  const ReservationBottomSheet(
      {this.scrollController, this.bottomSheetOffset, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservationProvider = ref.read(asyncMessageProvider);
    return CustomBottomSheet(
      scrollController: scrollController,
      bottomSheetOffset: bottomSheetOffset,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightSpace(AppSizes.s30),
                Image.network(
                  reservationProvider.value![0].stays![0].stayImages![0]
                      .toString(),
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                ),
                heightSpace(AppSizes.s30),
                ListTile(
                  title: Text(
                    "Hotel Check-in",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  subtitle: Text(
                    "${reservationProvider.value![0].stays![0].name} Hotel",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                heightSpace(AppSizes.s30),
                Row(
                  children: [
                    // const Expanded(child: ListTile()),
                    Expanded(
                      child: ListTile(
                        title: const Text(
                          "From",
                          // style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        subtitle: Text(
                          "${reservationProvider.value![0].startDate}",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text(
                          "Till",
                          // style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        subtitle: Text(
                          "${reservationProvider.value![0].endDate}",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
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
      ),
    );
  }
}
