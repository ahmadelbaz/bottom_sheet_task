import 'package:bottom_sheet_task_ahmad_elbaz/resources/font_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/text_style_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomElevatedButton extends ConsumerWidget {
  final String text;
  final Color? backgorundColor;
  final Color? textColor;
  final Color? borderColor;
  const CustomElevatedButton(
      {this.text = '',
      this.backgorundColor,
      this.textColor,
      this.borderColor,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: AppSizes.s50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgorundColor,
          foregroundColor: textColor,
          textStyle: getBoldTextStyle(
            fontSize: FontSize.s16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(color: borderColor ?? Colors.transparent),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
