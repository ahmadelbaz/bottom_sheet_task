import 'package:bottom_sheet_task_ahmad_elbaz/providers/reservation_provider.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/custom_bottom_sheet.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TicketBottomSheet extends ConsumerWidget {
  final ScrollController? scrollController;
  const TicketBottomSheet({this.scrollController, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservationProvider = ref.read(asyncMessageProvider);
    final ticketData = reservationProvider.value![0].userTickets;
    return CustomBottomSheet(
      dragHandlerColor: Theme.of(context).bottomSheetTheme.dragHandleColor,
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.s25),
        child: Center(
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(AppStrings.tickets),
                heightSpace(AppSizes.s12),
                Ticket(
                  userTicket: ticketData![0],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
