import 'package:basketball_counter_app/widgets/home_body_cubit_builder.dart';
import 'package:basketball_counter_app/widgets/theme_widgets/floating_buttons_dark_palette.dart';
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
      body: const HomeBodyCubitBuilder(),
      floatingActionButton: const DarkColorPaletteFloatingButtons(),
    );
  }
}
