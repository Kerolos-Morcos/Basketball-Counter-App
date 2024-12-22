import 'package:basketball_counter_app/core/functions/theme_extensions.dart';
import 'package:basketball_counter_app/cubits/theme_hydrated_cubit/theme_hydrated_cubit.dart';
import 'package:basketball_counter_app/widgets/home_body_cubit_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: const HomeBodyCubitBuilder(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (context.isDarkMode) {
            context.read<ThemeCubit>().updateTheme(ThemeMode.light);
          } else {
            context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
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
