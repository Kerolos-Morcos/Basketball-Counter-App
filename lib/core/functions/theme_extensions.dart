import 'package:basketball_counter_app/cubits/theme_hydrated_cubit/theme_hydrated_cubit.dart';
import 'package:basketball_counter_app/cubits/theme_hydrated_cubit/theme_hydrated_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension ThemeExtensions on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  Color get iconMode {
    return Theme.of(this).iconTheme.color ?? Theme.of(this).colorScheme.primary;
  }

  Color get bottomSheetMode {
    return Theme.of(this).bottomSheetTheme.backgroundColor ??
        Theme.of(this).colorScheme.primary;
  }

  ThemeHydratedCubitState get currentThemeState => read<ThemeCubit>().state;
}
