import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/constant/app_color.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
      brightness: Brightness.light, primaryColor: AppColor.lightTheme);

  static ThemeData get darkTheme =>
      ThemeData(brightness: Brightness.dark, primaryColor: AppColor.darkTheme);
}
