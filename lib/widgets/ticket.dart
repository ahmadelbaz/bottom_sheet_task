import 'package:bottom_sheet_task_ahmad_elbaz/providers/reservation_provider.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/color_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 17,
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
                  const Spacer(),
                  Row(
                    children: [
                      widthSpace(16),
                      Text(
                        AppStrings.ticketType,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        ticketData[0].ticketTypeName.toString(),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      widthSpace(16),
                      Text(
                        AppStrings.seat,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        ticketData[0].seat.toString(),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  heightSpace(AppSizes.s16),
                  // const Text('Ticket Typooo:'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
