import 'package:bottom_sheet_task_ahmad_elbaz/providers/reservation_provider.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/color_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/ticket_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Ticket extends ConsumerWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservationProvider = ref.read(asyncMessageProvider);
    final ticketData = reservationProvider.value![0].userTickets;
    return SafeArea(
      child: Center(
        child: SizedBox(
          height: AppSizes.s150,
          child: CustomPaint(
            painter: TicketPainter(
              borderColor: ColorManager.black,
              bgColor: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        ticketData![0].ticketUserData!.avatar.toString(),
                      ),
                    ),
                    title: Text(
                        "${ticketData[0].ticketUserData!.firstName} ${ticketData[0].ticketUserData!.lastName}"),
                    subtitle: Text(
                      ticketData[0].ticketSystemId.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
