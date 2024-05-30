import 'package:flutter/material.dart';

import '../../utils/app_style.dart';

class TwoRowView extends StatelessWidget {
  final String title1, title2, subTitle1, subTitle2;
  final bool? isImage;
  const TwoRowView(
      {required this.title1,
      required this.title2,
      required this.subTitle1,
      this.isImage,
      required this.subTitle2,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isImage == null
                ? Text(
                    title1,
                    style: AppStyles.blackHeading3,
                  )
                : Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 50,
                        child: Image.asset(
                          "assets/images/visa.png",
                          scale: 11,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        title1,
                        style: AppStyles.blackHeading3,
                      )
                    ],
                  ),
            Text(
              title2,
              style: AppStyles.blackHeading3,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subTitle1,
              style: AppStyles.heading3,
            ),
            Text(
              subTitle2,
              style: AppStyles.heading3,
            ),
          ],
        ),
      ],
    );
  }
}
