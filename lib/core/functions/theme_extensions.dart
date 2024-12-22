import 'package:flutter/material.dart';

extension ThemeExtensions on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  Color get iconMode {
    return Theme.of(this).iconTheme.color ?? Theme.of(this).colorScheme.primary;
  }
}
