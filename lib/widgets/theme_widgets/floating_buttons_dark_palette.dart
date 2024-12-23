import 'package:basketball_counter_app/core/functions/theme_extensions.dart';
import 'package:basketball_counter_app/core/functions/toggle_mode.dart';
import 'package:basketball_counter_app/widgets/theme_widgets/show_modal_color_palete.dart';
import 'package:flutter/material.dart';

class DarkColorPaletteFloatingButtons extends StatelessWidget {
  const DarkColorPaletteFloatingButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          bottom: 8,
          left: 32,
          child: FloatingActionButton(
            onPressed: () {
              toggleMode(context);
            },
            child: Icon(
              context.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              color: context.iconMode,
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          right: 0,
          child: FloatingActionButton(
            onPressed: () {
              showColorPalette(context);
            },
            child: Icon(
              Icons.palette,
              color: context.iconMode,
            ),
          ),
        ),
      ],
    );
  }
}
