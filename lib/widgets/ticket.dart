import 'package:bottom_sheet_task_ahmad_elbaz/models/user_tickets.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/color_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/common_functions.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/string_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/ticket_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Ticket extends ConsumerWidget {
  final UserTickets? userTicket;
  const Ticket({this.userTicket, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return userTicket == null
        ? Container()
        : SafeArea(
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
                            radius: AppSizes.s17,
                            backgroundImage: NetworkImage(
                              userTicket!.ticketUserData!.avatar.toString(),
                            ),
                          ),
                          title: Text(
                              "${userTicket!.ticketUserData!.firstName} ${userTicket!.ticketUserData!.lastName}"),
                          subtitle: Text(
                            userTicket!.ticketSystemId.toString(),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            widthSpace(AppSizes.s16),
                            Text(
                              AppStrings.ticketType,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              userTicket!.ticketTypeName.toString(),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            widthSpace(AppSizes.s16),
                            Text(
                              AppStrings.seat,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              userTicket!.seat.toString(),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        heightSpace(AppSizes.s16),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
