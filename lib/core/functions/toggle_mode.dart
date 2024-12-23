import 'package:basketball_counter_app/core/functions/theme_extensions.dart';
import 'package:basketball_counter_app/cubits/theme_hydrated_cubit/theme_hydrated_cubit.dart';
import 'package:basketball_counter_app/cubits/theme_hydrated_cubit/theme_hydrated_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// toggling between light and dark mode
void toggleMode(BuildContext context) {
  final isDark = context.isDarkMode;
  final currentThemeState = context.currentThemeState;
  final themeCubit = context.read<ThemeCubit>();
  if (isDark) {
    switch (currentThemeState.runtimeType) {
      case ThemeDefaultDarkState:
        themeCubit.updateTheme(ThemeDefaultLightState());
        break;
      case ThemeGreenDarkState:
        themeCubit.updateTheme(ThemeGreenLightState());
        break;
      case ThemeBlueDarkState:
        themeCubit.updateTheme(ThemeBlueLightState());
        break;
      case ThemeRedDarkState:
        themeCubit.updateTheme(ThemeRedLightState());
        break;
      default:
        themeCubit.updateTheme(ThemeDefaultLightState());
    }
  } else {
    switch (currentThemeState.runtimeType) {
      case ThemeDefaultLightState:
        themeCubit.updateTheme(ThemeDefaultDarkState());
        break;
      case ThemeGreenLightState:
        themeCubit.updateTheme(ThemeGreenDarkState());
        break;
      case ThemeBlueLightState:
        themeCubit.updateTheme(ThemeBlueDarkState());
        break;
      case ThemeRedLightState:
        themeCubit.updateTheme(ThemeRedDarkState());
        break;
      default:
        themeCubit.updateTheme(ThemeDefaultDarkState());
    }
  }
}
