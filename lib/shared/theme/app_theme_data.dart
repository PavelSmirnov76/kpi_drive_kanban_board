import 'package:flutter/material.dart';
import 'app_theme.dart';

class AppThemeData {
  final AppTypography typography;
  final ThemeData materialThemeData;

  AppThemeData({required this.typography, required this.materialThemeData});

  factory AppThemeData.light() {
    return AppThemeData(
      typography: AppTypography(),
      materialThemeData: AppThemes.light,
    );
  }
}
