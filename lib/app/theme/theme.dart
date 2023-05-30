import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

enum ThemeColors {
  dynamic,
  green,
  blue,
  purple,
}

extension ThemeColorsExtension on ThemeColors {
  ColorScheme? get colorScheme {
    switch (this) {
      case ThemeColors.dynamic:
        return null;
      case ThemeColors.green:
        return ColorScheme.fromSeed(
          seedColor: Colors.green,
        );
      case ThemeColors.blue:
        return ColorScheme.fromSeed(
          seedColor: Colors.blue,
        );
      case ThemeColors.purple:
        return ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        );
    }
  }
}

generateLightTheme(ColorScheme? colorScheme) {
  return ThemeData(
    colorScheme: colorScheme ??
        ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
    useMaterial3: true,
  );
}

generateDarkTheme(ColorScheme? colorScheme) {
  return ThemeData(
    colorScheme: colorScheme ??
        ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
    useMaterial3: true,
  );
}

@riverpod
class ThemeState extends _$ThemeState {
  final ThemeColors themeColor;

  ThemeState({
    this.themeColor = ThemeColors.dynamic,
  });

  @override
  ThemeColors build() {
    return themeColor;
  }

  changeTheme(ThemeColors newTheme) {
    state = newTheme;
  }
}
