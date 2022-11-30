import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: AppColors.backgroundWhite,
    scaffoldBackgroundColor: AppColors.backgroundWhite,
    fontFamily: 'MarkPro',
  );
}

abstract class AppColors {
  static const Color backgroundWhite = Color(0XFFE5E5E5);
  static const Color darkBlue = Color(0XFF010035);
  static const Color orange = Color(0XFFFF6E4E);
}
