// These States are for Color Palette only
import 'package:basketball_counter_app/core/config/theme/theme_data/dark/color_palette_dark/theme_data_blue_dark.dart';
import 'package:basketball_counter_app/core/config/theme/theme_data/dark/color_palette_dark/theme_data_green_dark.dart';
import 'package:basketball_counter_app/core/config/theme/theme_data/dark/color_palette_dark/theme_data_red_dark.dart';
import 'package:basketball_counter_app/core/config/theme/theme_data/dark/theme_data_default_dark.dart';
import 'package:basketball_counter_app/core/config/theme/theme_data/light/color_palette_light/theme_data_blue_light.dart';
import 'package:basketball_counter_app/core/config/theme/theme_data/light/color_palette_light/theme_data_green_light.dart';
import 'package:basketball_counter_app/core/config/theme/theme_data/light/color_palette_light/theme_data_red_light.dart';
import 'package:basketball_counter_app/core/config/theme/theme_data/light/theme_data_default_light.dart';
import 'package:flutter/material.dart';

sealed class ThemeHydratedCubitState {
  ThemeData get themeData => getLightDefaultTheme();
}

// default theme
final class ThemeDefaultLightState extends ThemeHydratedCubitState {
  @override
  ThemeData get themeData => getLightDefaultTheme();
}

final class ThemeDefaultDarkState extends ThemeHydratedCubitState {
  @override
  ThemeData get themeData => getDarkDefaultTheme();
}

// Light Mode
final class ThemeGreenLightState extends ThemeHydratedCubitState {
  @override
  ThemeData get themeData => getLightGreenTheme();
}

final class ThemeRedLightState extends ThemeHydratedCubitState {
  @override
  ThemeData get themeData => getLightRedTheme();
}

final class ThemeBlueLightState extends ThemeHydratedCubitState {
  @override
  ThemeData get themeData => getLightBlueTheme();
}

// Dark Mode
final class ThemeGreenDarkState extends ThemeHydratedCubitState {
  @override
  ThemeData get themeData => getDarkGreenTheme();
}

final class ThemeRedDarkState extends ThemeHydratedCubitState {
  @override
  ThemeData get themeData => getDarkRedTheme();
}

final class ThemeBlueDarkState extends ThemeHydratedCubitState {
  @override
  ThemeData get themeData => getDarkBlueTheme();
}
