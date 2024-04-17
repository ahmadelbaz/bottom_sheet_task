import 'package:bottom_sheet_task_ahmad_elbaz/providers/all_providers.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/providers/reservation_provider.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/color_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/custom_bottom_sheet.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/custom_divider.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/gallery_section.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/location_container.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/rooms_section.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/ticket.dart';
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heightSpace(AppSizes.s40),
                      Text(
                        AppStrings.hotelCheckIn,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "${reservationProvider.value![0].stays![0].name} ${AppStrings.hotel}",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      heightSpace(AppSizes.s40),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  AppStrings.from,
                                ),
                                Text(
                                  "${reservationProvider.value![0].startDate}",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  AppStrings.till,
                                ),
                                Text(
                                  "${reservationProvider.value![0].endDate}",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      heightSpace(AppSizes.s40),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  AppStrings.stars,
                                ),
                                SizedBox(
                                  height: AppSizes.s20,
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(width: AppSizes.s3),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: reservationProvider
                                        .value![0].stays![0].stars!,
                                    itemBuilder: (item, index) {
                                      return Image(
                                        image: const AssetImage(
                                          AppAssets.starIcon,
                                        ),
                                        width: AppSizes.s18,
                                        height: AppSizes.s18,
                                        color: ref.watch(
                                                isLightStateProvider) // We will change this approach and use a Theme Extension
                                            ? ColorManager.lightStar
                                            : ColorManager.darkStar,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(AppStrings.roomCount),
                                Text(
                                  "${reservationProvider.value![0].stays![0].rooms!.length} ${AppStrings.room}",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      heightSpace(AppSizes.s40),
                      const Text(AppStrings.location),
                      LocationContainer(
                          address:
                              reservationProvider.value![0].stays![0].address!,
                          hotelName: reservationProvider
                              .value![0].stays![0].name
                              .toString(),
                          lat: reservationProvider.value![0].stays![0].lat!,
                          long: reservationProvider.value![0].stays![0].lng!),
                      heightSpace(AppSizes.s40),
                      const Text(AppStrings.tickets),
                      heightSpace(AppSizes.s12),
                      Ticket(
                        userTicket:
                            reservationProvider.value![0].userTickets![0],
                      ),
                      heightSpace(AppSizes.s45),
                      CustomDivider(
                        color: Theme.of(context).dividerTheme.color!,
                      ),
                      heightSpace(AppSizes.s45),
                      RoomsSection(
                        rooms: reservationProvider.value![0].stays![0].rooms!,
                      ),
                      const Text(AppStrings.gallery),
                      heightSpace(AppSizes.s10),
                      // We do this to add more image so that we can text the design
                      GallerySection(
                        images: [
                          ...reservationProvider
                              .value![0].stays![0].stayImages!,
                          ...reservationProvider.value![0].stays![0].stayImages!
                        ],
                      ),
                      heightSpace(AppSizes.s40),
                      const Text(AppStrings.amenities),
                      Text(
                        '${reservationProvider.value![0].stays![0].amenities}',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      heightSpace(AppSizes.s45),
                    ],
                  ),
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
