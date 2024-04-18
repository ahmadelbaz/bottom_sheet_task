import 'package:bottom_sheet_task_ahmad_elbaz/models/rooms.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/custom_divider.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/guests_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoomsSection extends ConsumerWidget {
  final List<Rooms> rooms;
  const RoomsSection({required this.rooms, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: rooms.length,
      itemBuilder: (context, index) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  '${AppStrings.roomReservation} ${index + 1}'), // We can handle this better
              heightSpace(AppSizes.s35),
              const Text('${AppStrings.guests}:'),
              heightSpace(AppSizes.s10),
              GuestsSection(guests: rooms[index].guests!),
              heightSpace(AppSizes.s35),
              const Text(AppStrings.roomType),
              Text(
                '${rooms[index].roomTypeName}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              heightSpace(AppSizes.s35),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          AppStrings.roomNumber,
                        ),
                        Text(
                          "${rooms[0].roomNumber}",
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
                          AppStrings.sleeps,
                        ),
                        Text(
                          "${rooms[0].roomCapacity}",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              heightSpace(AppSizes.s45),
              const CustomDivider(),
              heightSpace(AppSizes.s45),
            ],
          ),
        );
      },
    );
  }
}
