import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/font_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/text_style_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/reservation_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomElevatedButton extends ConsumerWidget {
  final String text;
  const CustomElevatedButton({this.text = '', super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: AppSizes.s50,
      child: ElevatedButton(
        onPressed: () {
          showFlexibleBottomSheet(
            minHeight: 0,
            initHeight: 0.8,
            maxHeight: 1,
            // Maybe change something here later
            anchors: [
              0,
              0.1,
              0.15,
              0.2,
              0.25,
              0.3,
              0.35,
              0.4,
              0.45,
              0.5,
              0.55,
              0.6,
              0.65,
              0.7,
              0.75,
              0.8,
              0.85,
              0.9,
              0.95,
              1
            ],
            bottomSheetBorderRadius:
                const BorderRadius.vertical(top: Radius.circular(AppSizes.s20)),
            barrierColor: Theme.of(context).bottomSheetTheme.modalBarrierColor,
            context: context,
            builder: (BuildContext context, ScrollController scrollController,
                double bottomSheetOffset) {
              return ReservationBottomSheet(
                scrollController: scrollController,
                bottomSheetOffset: bottomSheetOffset,
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          textStyle: getBoldTextStyle(
            fontSize: FontSize.s16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
