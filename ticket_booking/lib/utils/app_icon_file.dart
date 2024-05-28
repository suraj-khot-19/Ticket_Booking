import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_style.dart';

import 'app_layouts.dart';
import 'spacer.dart';

class AppIconFile extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconFile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayouts.getHeight(context, 60),
      padding: EdgeInsets.symmetric(
          vertical: AppLayouts.getWidth(context, 13),
          horizontal: AppLayouts.getWidth(context, 10)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayouts.getWidth(context, 10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey.shade500,
          ),
          addHorizontalSpace(10),
          Text(
            text,
            style: AppStyles.textStyle,
          ),
        ],
      ),
    );
  }
}
