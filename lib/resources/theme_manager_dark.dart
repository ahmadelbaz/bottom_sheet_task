import 'package:bottom_sheet_task_ahmad_elbaz/resources/color_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/font_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/text_style_manager.dart';
import 'package:bottom_sheet_task_ahmad_elbaz/resources/value_manager.dart';
import 'package:flutter/material.dart';

ThemeData getDarkApplicationTheme() {
  return ThemeData(
    // Main Colors
    primaryColor: ColorManager.darkPrimary,
    primaryColorLight: ColorManager.white,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightBackground,
    fontFamily: FontConstants.fontFamily,
    colorScheme: const ColorScheme(
      primary: ColorManager.lightPrimary, // Done
      surface: ColorManager.white, // Done
      background: ColorManager.darkBackground,
      brightness: Brightness.light, // Done
      error: ColorManager.red,
      onBackground: ColorManager.lightBackground, // Done
      onError: Colors.purple,
      onPrimary: ColorManager.white, // Done
      onSecondary: Colors.white, // Done
      onSurface: ColorManager.lightGrey, // Done
      secondary: ColorManager.darkPrimary,
      primaryContainer: ColorManager.darkGrey2,
    ),

    // Card view theme

    cardTheme: const CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.lightGrey,
      elevation: AppSizes.s4,
    ),

    // App bar theme
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.lightPrimary,
      centerTitle: true,
      elevation: AppSizes.s4,
      shadowColor: ColorManager.lightBackground,
      titleTextStyle: getRegularTextStyle(
        fontSize: FontSize.s16,
        color: ColorManager.white,
      ),
    ),

    // Button theme
    buttonTheme: const ButtonThemeData(
      buttonColor: ColorManager.lightPrimary,
      focusColor: ColorManager.darkPrimary,
      hoverColor: ColorManager.lightBackground,
    ),

    // Elevated Button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.darkPrimary,
        textStyle: getBoldTextStyle(
          fontSize: FontSize.s16,
          color: ColorManager.white,
        ),
        shape: const LinearBorder(),
      ),
    ),

    // Text Button theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorManager.darkPrimary,
        textStyle: getBoldTextStyle(
          fontSize: FontSize.s16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
              color: ColorManager.darkPrimary, width: AppSizes.s50),
        ),
      ),
    ),

    // Outline Button Theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            side: BorderSide(
                color: ColorManager.darkPrimary, width: AppSizes.s50),
          ),
        ),
      ),
    ),

    // Bottom Sheet Theme
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorManager.black,
      modalBarrierColor: ColorManager.darkBackground,
      // modalBackgroundColor: Colors.blue,
      // shape: ContinuousRectangleBorder(
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(50),
      //   ),
      // ),
      showDragHandle: true,
    ),
    // Progress Indicator Theme
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorManager.white,
    ),

    // Text theme
    textTheme: TextTheme(
      bodyLarge: getSemiBoldTextStyle(
        fontSize: FontSize.s18,
        color: ColorManager.lightPrimary,
      ),
      // The tesxt inside column in the ticket bottom sheet
      bodyMedium: getBoldTextStyle(
        fontSize: FontSize.s18,
        color: ColorManager.white,
      ),
      // List tile subtitle
      bodySmall: getRegularTextStyle(
        fontSize: FontSize.s15,
        color: ColorManager.grey4,
      ),
      titleLarge: getBoldTextStyle(
        fontSize: FontSize.s18,
        color: ColorManager.white,
      ),
      titleMedium: getRegularTextStyle(
        fontSize: FontSize.s14,
        color: ColorManager.grey2,
      ),
      titleSmall: getRegularTextStyle(
        fontSize: FontSize.s12,
        color: ColorManager.lightPrimary,
      ),
      displayMedium: getMediumTextStyle(
        fontSize: FontSize.s12,
        color: ColorManager.lightPrimary,
      ),
      displaySmall: getRegularTextStyle(
        fontSize: FontSize.s11,
        color: ColorManager.grey2,
      ),
    ),
    // Switch theme
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all<Color>(ColorManager.darkGreyLight),
      trackColor: MaterialStateProperty.all<Color>(ColorManager.darkGrey),
      trackOutlineColor:
          MaterialStateProperty.all<Color>(ColorManager.darkGreyBorder),
      trackOutlineWidth: MaterialStateProperty.all(1),
    ),

    // Input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      // Content padding
      contentPadding: const EdgeInsets.all(AppSizes.s8),
      hintStyle: getRegularTextStyle(
        fontSize: FontSize.s14,
        color: ColorManager.grey2,
      ),
      labelStyle: getMediumTextStyle(
        fontSize: FontSize.s14,
        color: ColorManager.grey2,
      ),
      errorStyle: getRegularTextStyle(
        color: ColorManager.red,
      ),
      // Enabled border theme
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.lightGrey,
          width: AppSizes.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSizes.s8),
        ),
      ),
      // Focused border theme
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.lightPrimary,
          width: AppSizes.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSizes.s8),
        ),
      ),
      // Error border theme
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.red,
          width: AppSizes.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSizes.s8),
        ),
      ),
      // Focused error border theme
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.lightPrimary,
          width: AppSizes.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSizes.s8),
        ),
      ),
    ),
  );
}
