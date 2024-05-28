import 'package:flutter/material.dart';

import 'app_style.dart';

class AppRowText extends StatelessWidget {
  final String text1, text2;
  const AppRowText({required this.text1, required this.text2, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: AppStyles.heading2,
        ),
        InkWell(
          onTap: () {
            //function
          },
          child: Text(
            text2,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
