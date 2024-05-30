import 'package:flutter/material.dart';

import '../../utils/app_layouts.dart';
import '../../utils/app_style.dart';

class RowClickable extends StatelessWidget {
  final String row1Text, row2Text;
  const RowClickable(
      {required this.row1Text, required this.row2Text, super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayouts.getSize(context);
    return FittedBox(
      child: Container(
        height: AppLayouts.getHeight(context, 40),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(AppLayouts.getHeight(context, 60)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            //Airline Ticket
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(
                  vertical: AppLayouts.getHeight(context, 7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayouts.getHeight(context, 50))),
                  color: Colors.white),
              child: InkWell(
                  onTap: () {},
                  child: Center(
                      child: Text(
                    row1Text,
                    style: AppStyles.textStyle.copyWith(
                        color: Colors.black, fontWeight: FontWeight.normal),
                  ))),
            ),
            //hotels
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(
                  vertical: AppLayouts.getHeight(context, 7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(
                      AppLayouts.getHeight(context, 50),
                    ),
                  ),
                  color: Colors.transparent),
              child: InkWell(
                  onTap: () {},
                  child: Center(
                      child: Text(row2Text,
                          style: AppStyles.textStyle.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)))),
            ),
          ],
        ),
      ),
    );
  }
}
