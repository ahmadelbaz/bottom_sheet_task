import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/font_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/text_style_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/bottom_sheets/reservation_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomElevatedButton extends ConsumerWidget {
  final String text;
  const CustomElevatedButton({this.text = '', super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * AppSizes.s0_7,
      height: AppSizes.s50,
      child: ElevatedButton(
        onPressed: () {
          showFlexibleBottomSheet(
            minHeight: 0,
            initHeight: AppSizes.s0_9,
            maxHeight: AppSizes.s1,
            // Maybe change something here later
            anchors: [
              0,
              AppSizes.s0_5,
              AppSizes.s0_6,
              AppSizes.s0_7,
              AppSizes.s0_8,
              AppSizes.s0_9,
              AppSizes.s1,
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
