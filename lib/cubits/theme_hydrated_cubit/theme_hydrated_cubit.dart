import 'package:basketball_counter_app/constants.dart';
import 'package:basketball_counter_app/cubits/theme_hydrated_cubit/theme_hydrated_cubit_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

// Dark Mode Cubit
// class ThemeCubit extends HydratedCubit<ThemeMode> {
//   ThemeCubit() : super(ThemeMode.system);
//   void updateTheme(ThemeMode mode) async {
//     emit(mode);
//   }

//   @override
//   ThemeMode? fromJson(Map<String, dynamic> json) {
//     final savedMode = json[kThemeMode];
//     if (savedMode == 'light') {
//       return ThemeMode.light;
//     } else if (savedMode == 'dark') {
//       return ThemeMode.dark;
//     } else {
//       return ThemeMode.system;
//     }
//   }

//   @override
//   Map<String, dynamic>? toJson(ThemeMode state) {
//     if (state == ThemeMode.light) {
//       return {kThemeMode: 'light'};
//     } else if (state == ThemeMode.dark) {
//       return {kThemeMode: 'dark'};
//     } else {
//       return {kThemeMode: 'system'};
//     }
//   }
// }
// ********************************************
// Color Palette & Dark Mode Cubit
class ThemeCubit extends HydratedCubit<ThemeHydratedCubitState> {
  ThemeCubit() : super(ThemeDefaultLightState());
  void updateTheme(ThemeHydratedCubitState mode) async {
    emit(mode);
  }

  @override
  ThemeHydratedCubitState? fromJson(Map<String, dynamic> json) {
    final savedMode = json[kThemeMode];
    if (savedMode == 'lightOrange') {
      return ThemeDefaultLightState();
    } else if (savedMode == 'darkOrange') {
      return ThemeDefaultDarkState();
    } else if (savedMode == 'lightGreen') {
      return ThemeGreenLightState();
    } else if (savedMode == 'darkGreen') {
      return ThemeGreenDarkState();
    } else if (savedMode == 'lightBlue') {
      return ThemeBlueLightState();
    } else if (savedMode == 'darkBlue') {
      return ThemeBlueDarkState();
    } else if (savedMode == 'lightRed') {
      return ThemeRedLightState();
    } else if (savedMode == 'darkRed') {
      return ThemeRedDarkState();
    } else {
      return ThemeDefaultLightState();
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeHydratedCubitState state) {
    if (state is ThemeDefaultLightState) {
      return {kThemeMode: 'lightOrange'};
    } else if (state is ThemeDefaultDarkState) {
      return {kThemeMode: 'darkOrange'};
    } else if (state is ThemeGreenLightState) {
      return {kThemeMode: 'lightGreen'};
    } else if (state is ThemeRedLightState) {
      return {kThemeMode: 'lightRed'};
    } else if (state is ThemeBlueLightState) {
      return {kThemeMode: 'lightBlue'};
    } else if (state is ThemeGreenDarkState) {
      return {kThemeMode: 'darkGreen'};
    } else if (state is ThemeRedDarkState) {
      return {kThemeMode: 'darkRed'};
    } else if (state is ThemeBlueDarkState) {
      return {kThemeMode: 'darkBlue'};
    } else {
      return {kThemeMode: 'lightOrange'};
    }
  }
}
