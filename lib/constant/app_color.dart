import 'package:flutter/cupertino.dart';

class AppColor {
  AppColor._();

  static Color get lightTheme => const Color(0xffffffff);

  static Color get darkTheme => const Color(0Xff000000);

  static Color getThemeColor({required bool isLightMode}) =>
      isLightMode ? lightTheme : darkTheme;

  static Color getThemeColorInverse({required bool isLightMode}) =>
      isLightMode ? darkTheme : lightTheme;
}
