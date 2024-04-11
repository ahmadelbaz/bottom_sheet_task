import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/ticket_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Ticket extends ConsumerWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Center(
        child: SizedBox(
          height: AppSizes.s150,
          child: CustomPaint(
            painter: TicketPainter(
              borderColor: Colors.black,
              bgColor: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: const SizedBox(
              width: double.infinity,
              child: Column(
                children: [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
