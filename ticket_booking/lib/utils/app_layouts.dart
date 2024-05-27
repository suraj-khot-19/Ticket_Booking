import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayouts {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight(BuildContext context) {
    return Get.context != null
        ? Get.height
        : MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return Get.context != null ? Get.width : MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context, double height) {
    double x = getScreenHeight(context) / height;
    return getScreenHeight(context) / x;
  }

  static double getWidth(BuildContext context, double width) {
    double x = getScreenWidth(context) / width;
    return getScreenWidth(context) / x;
  }
}
