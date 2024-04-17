import 'package:bottom_sheet_task_ahmad_elbaz/models/guests.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GuestsSection extends ConsumerWidget {
  final List<Guests> guests;
  const GuestsSection({required this.guests, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: guests.length,
      itemBuilder: (context, index) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: AppSizes.s17,
                    backgroundImage: NetworkImage(
                      guests[index].avatar.toString(),
                    ),
                  ),
                  widthSpace(AppSizes.s6),
                  Text(
                    '${guests[index].firstName} ${guests[index].lastName}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
