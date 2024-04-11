import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/custom_bottom_sheet.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TicketBottomSheet extends ConsumerWidget {
  const TicketBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomBottomSheet(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.s25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(AppStrings.tickets),
              heightSpace(AppSizes.s12),
              const Ticket(),
            ],
          ),
        ),
      ),
    );
  }
}
