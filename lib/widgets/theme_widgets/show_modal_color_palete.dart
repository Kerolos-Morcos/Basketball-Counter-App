import 'package:basketball_counter_app/core/config/theme/app_colors.dart';
import 'package:basketball_counter_app/core/functions/theme_extensions.dart';
import 'package:basketball_counter_app/core/functions/theme_name_enum.dart';
import 'package:basketball_counter_app/core/functions/toggle_theme.dart';
import 'package:flutter/material.dart';

void showColorPalette(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: context.bottomSheetMode,
    context: context,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 16,
          children: [
            _buildColorButton(
              context,
              AppColors.redLightPrimary200,
              ThemeNameEnum.red,
            ),
            _buildColorButton(
              context,
              AppColors.greenLightPrimary200,
              ThemeNameEnum.green,
            ),
            _buildColorButton(
              context,
              Colors.orange.shade800,
              ThemeNameEnum.orange,
            ),
            _buildColorButton(
              context,
              AppColors.blueLightPrimary200,
              ThemeNameEnum.blue,
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildColorButton(
    BuildContext context, Color color, ThemeNameEnum themeName) {
  return ElevatedButton(
    onPressed: () {
      toggleTheme(context, themeName);
      Navigator.pop(context);
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      shape: const CircleBorder(),
      minimumSize: const Size(60, 60),
    ),
    child: const SizedBox(width: 10),
  );
}
