import 'package:basketball_counter_app/core/functions/theme_extensions.dart';
import 'package:basketball_counter_app/core/functions/theme_name_enum.dart';
import 'package:basketball_counter_app/cubits/theme_hydrated_cubit/theme_hydrated_cubit.dart';
import 'package:basketball_counter_app/cubits/theme_hydrated_cubit/theme_hydrated_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void toggleTheme(BuildContext context, ThemeNameEnum themeName) {
  final isDark = context.isDarkMode;
  switch (themeName) {
    case ThemeNameEnum.orange:
      context.read<ThemeCubit>().updateTheme(
          isDark ? ThemeDefaultDarkState() : ThemeDefaultLightState());
      break;
    case ThemeNameEnum.green:
      context
          .read<ThemeCubit>()
          .updateTheme(isDark ? ThemeGreenDarkState() : ThemeGreenLightState());
      break;
    case ThemeNameEnum.blue:
      context
          .read<ThemeCubit>()
          .updateTheme(isDark ? ThemeBlueDarkState() : ThemeBlueLightState());
      break;
    case ThemeNameEnum.red:
      context
          .read<ThemeCubit>()
          .updateTheme(isDark ? ThemeRedDarkState() : ThemeRedLightState());
      break;
  }
}
