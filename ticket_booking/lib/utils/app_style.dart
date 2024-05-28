import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color bgColor = const Color(0xFFeeedf2);
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color orangeColor = const Color(0xFFF37B67);

  static Color kakiColor = const Color(0xFFd2bdb6);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle heading1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle heading2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle heading3 = TextStyle(
      fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey.shade500);
  static TextStyle whiteHeading3 = const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white);
  static TextStyle heading4 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500);
  static TextStyle whiteHeading4 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);

  static TextStyle blackHeading3 = const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black);
  static TextStyle blackHeading4 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);
}
