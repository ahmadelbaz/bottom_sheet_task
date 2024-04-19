import 'package:bottom_sheet_task_ahmad_elbaz/providers/all_providers.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocationSection extends ConsumerWidget {
  final String address;
  final String hotelName;
  final String lat;
  final String long;
  const LocationSection(
      {required this.address,
      required this.hotelName,
      required this.lat,
      required this.long,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String countryName = address.split(',').last;
    return Container(
      height: AppSizes.s110,
      width: double.infinity,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 375 / 2,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: AppSizes.s15, left: AppSizes.s14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$hotelName$countryName ${AppStrings.hotel}',
                    style: Theme.of(context).textTheme.titleSmall,
                    maxLines: 1,
                  ),
                  heightSpace(AppSizes.s12),
                  Text(
                    '${AppStrings.address} : $address',
                    style: Theme.of(context).textTheme.displayMedium,
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: AppSizes.s100,
            child: Stack(
              children: [
                Image(
                  image: AssetImage(ref.watch(isLightStateProvider)
                      ? AppAssets.lightLocationImage
                      : AppAssets.locationImage),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage(ref.watch(isLightStateProvider)
                        ? AppAssets.darkMarkerIcon
                        : AppAssets.markerIcon),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
