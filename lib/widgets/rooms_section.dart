import 'package:bottom_sheet_task_ahmad_elbaz/models/rooms.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
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
              Text('Room Reservation ${rooms[index].roomNumber.toString()}'),
              heightSpace(AppSizes.s35),
              const Text('Guest(s):'),
              heightSpace(AppSizes.s10),
              GuestsSection(guests: rooms[index].guests!),
            ],
          ),
        );
      },
    );
  }
}
