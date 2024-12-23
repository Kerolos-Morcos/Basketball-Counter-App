import 'package:basketball_counter_app/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData getDarkDefaultTheme() {
  return ThemeData(
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.orange.shade900,
      foregroundColor: AppColors.grey0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        side: BorderSide(
          color: Colors.orange.shade900,
          width: 2,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      // App Primary Colors in dark Mode
      seedColor: Colors.orange.shade900,
      brightness: Brightness.dark,
    ),
    textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: AppColors.grey0,
          displayColor: AppColors.grey0,
        ),
    // style for elevated buttons only
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // Buttons Primary Colors in Light Mode
        backgroundColor: Colors.orange.shade900,
        foregroundColor: AppColors.grey0,
        disabledBackgroundColor: AppColors.grey800,
        disabledForegroundColor: AppColors.grey400,
        // for borderRadius
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: const Size(110, 50),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.grey100,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.grey100,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.orange.shade900,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.error200,
        ),
      ),
      // App Primary color for fill Color
      // we fill according to input state, if it is focused or not
      fillColor: WidgetStateColor.resolveWith(
        (states) {
          if (states.contains(WidgetState.focused)) {
            return Colors.orange.shade100;
          } else {
            return AppColors.grey0;
          }
        },
      ),
      filled: true,
      // App Text Hint and Label Style
      // hintStyle: ,
      // labelStyle: ,
    ),
  );
}
