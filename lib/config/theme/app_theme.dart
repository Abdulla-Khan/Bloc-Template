import 'package:flutter/material.dart';

import '../colors/colors.dart';

class AppThemeData {
  AppThemeData._();

  static ThemeData get appTheme => ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: 'Poppins',
    useMaterial3: true,
  );
}
