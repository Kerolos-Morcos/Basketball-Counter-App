import 'package:basketball_counter_app/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData getLightRedTheme() {
  return ThemeData(
    iconTheme: const IconThemeData(
      color: AppColors.redLightPrimary200,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.redLightScaffoldBackground,
      foregroundColor: AppColors.grey0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        side: BorderSide(
          color: AppColors.redLightPrimary200,
          width: 2,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 22,
      ),
      backgroundColor: AppColors.redLightPrimary200,
    ),
    scaffoldBackgroundColor: AppColors.redLightScaffoldBackground,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      // App Primary Colors in Light Mode
      seedColor: AppColors.redLightPrimary200,
      brightness: Brightness.light,
    ),
    textTheme: ThemeData.light().textTheme.apply(
          bodyColor: AppColors.grey900,
          displayColor: AppColors.grey900,
        ),
    // style for elevated buttons only
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // Buttons Primary Colors in Light Mode
        backgroundColor: AppColors.redLightPrimary200,
        foregroundColor: Colors.black,
        disabledBackgroundColor: AppColors.grey100,
        disabledForegroundColor: AppColors.grey0,
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
          color: AppColors.redLightScaffoldBackground,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.redLightScaffoldBackground,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.redLightPrimary200,
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
            return AppColors.redLightPrimary0;
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
