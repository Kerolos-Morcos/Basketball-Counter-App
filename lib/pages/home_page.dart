import 'package:basketball_counter_app/core/config/theme/app_colors.dart';
import 'package:basketball_counter_app/core/functions/theme_extensions.dart';
import 'package:basketball_counter_app/core/functions/theme_name_enum.dart';
import 'package:basketball_counter_app/core/functions/toggle_mode.dart';
import 'package:basketball_counter_app/core/functions/toggle_theme.dart';
import 'package:basketball_counter_app/widgets/home_body_cubit_builder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Points Counter'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 22),
          const HomeBodyCubitBuilder(),
          const SizedBox(height: 16),
          Row(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  toggleTheme(context, ThemeNameEnum.lightOrange);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange.shade800,
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60),
                ),
                child: const SizedBox(width: 10),
              ),
              ElevatedButton(
                onPressed: () {
                  toggleTheme(context, ThemeNameEnum.lightRed);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.redLightPrimary200,
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60),
                ),
                child: const SizedBox(width: 10),
              ),
              ElevatedButton(
                onPressed: () {
                  toggleTheme(context, ThemeNameEnum.lightGreen);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.greenLightPrimary200,
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60),
                ),
                child: const SizedBox(width: 10),
              ),
              ElevatedButton(
                onPressed: () {
                  toggleTheme(context, ThemeNameEnum.lightBlue);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blueLightPrimary200,
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60),
                ),
                child: const SizedBox(width: 10),
              ),
            ],
          )
        ],
      ),
      // Dark Mode Toggle
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     if (context.isDarkMode) {
      //       context.read<ThemeCubit>().updateTheme(ThemeMode.light);
      //     } else {
      //       context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
      //     }
      //   },
      //   child: Icon(
      //     context.isDarkMode ? Icons.light_mode : Icons.dark_mode,
      //     color: context.iconMode,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,

      // Color Palette Toggle
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (context.isDarkMode) {
            toggleMode(context);
          } else {
            toggleMode(context);
          }
        },
        child: Icon(
          context.isDarkMode ? Icons.light_mode : Icons.dark_mode,
          color: context.iconMode,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
