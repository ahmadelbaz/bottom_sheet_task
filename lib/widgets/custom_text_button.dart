import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/providers/all_providers.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/color_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/font_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/text_style_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/widgets/ticket_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomTextButton extends ConsumerWidget {
  final String text;
  final double borderWidth;
  const CustomTextButton({this.text = '', this.borderWidth = 0.0, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final scrollController = ScrollController();
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: AppSizes.s50,
      child: TextButton(
        onPressed: () async {
          showFlexibleBottomSheet(
            minHeight: 0,
            initHeight: 0.5,
            maxHeight: 1,
            anchors: [0, 0.5, 1],
            bottomSheetBorderRadius:
                const BorderRadius.vertical(top: Radius.circular(AppSizes.s20)),
            barrierColor: Theme.of(context).bottomSheetTheme.modalBarrierColor,
            context: context,
            builder: (BuildContext context, ScrollController scrollController,
                double bottomSheetOffset) {
              return TicketBottomSheet(
                scrollController: scrollController,
                bottomSheetOffset: bottomSheetOffset,
              );
            },
          );
        },
        style: TextButton.styleFrom(
          textStyle: getBoldTextStyle(
            fontSize: FontSize.s16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: borderWidth == 0.0
                ? BorderSide.none
                : BorderSide(
                    width: borderWidth,
                    color: ref.watch(
                            isLightStateProvider) // TODO : Not the best approach I guess , try to fix it later
                        ? ColorManager.lightPrimary
                        : ColorManager.darkPrimary,
                  ),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
