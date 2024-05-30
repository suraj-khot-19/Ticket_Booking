import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/view/dot_line_view.dart';
import 'package:ticket_booking/utils/app_layouts.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/utils/spacer.dart';

import '../../widgets/plane_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketList;
  final bool? isColor;
  final bool? isMargin;
  final bool? isPlaneColor;
  const TicketView(
      {required this.ticketList,
      this.isMargin,
      this.isColor,
      this.isPlaneColor,
      super.key});
  @override
  Widget build(BuildContext context) {
    final size = AppLayouts.getSize(context);

    return SizedBox(
      width: size.width * 0.80, //80% of width
      height: AppLayouts.getHeight(
          context, isMargin == null ? 180 : 140), //main height for card
      child: Container(
        margin: EdgeInsets.only(
            right: isMargin == null ? 16 : 0, left: isMargin == null ? 16 : 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //1st card
            Container(
              padding: EdgeInsets.all(isMargin == null ? 16 : 0),
              decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticketList['from']['code'],
                        style: isColor == null
                            ? AppStyles.whiteHeading3
                            : AppStyles.blackHeading3,
                      ),
                      const Spacer(),
                      PlaneContainer(
                        isColor: isPlaneColor == null ? false : true,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayouts.getHeight(context, 24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                  color: isColor == null
                                                      ? Colors.white
                                                      : Colors.cyan,
                                                ),
                                              ),
                                            )));
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.cyan,
                              ),
                            ),
                          ),
                        ],
                      )),
                      PlaneContainer(
                        isColor: isPlaneColor == null ? false : true,
                      ),
                      const Spacer(),
                      Text(
                        ticketList['to']['code'],
                        style: isColor == null
                            ? AppStyles.whiteHeading3
                            : AppStyles.blackHeading3,
                      ),
                    ],
                  ),
                  addVerticleSpace(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayouts.getWidth(context, 100),
                        child: Text(
                          ticketList['from']['place'],
                          style: isColor == null
                              ? AppStyles.whiteHeading4
                              : AppStyles.heading4,
                        ),
                      ),
                      Text(
                        "${ticketList['duration']}",
                        style: isColor == null
                            ? AppStyles.whiteHeading4
                            : AppStyles.heading4,
                      ),
                      SizedBox(
                        width: AppLayouts.getWidth(context, 100),
                        child: Text(
                          ticketList['to']['place'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? AppStyles.whiteHeading4
                              : AppStyles.heading4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //2nd card
            Container(
              color: isColor == null ? AppStyles.orangeColor : Colors.white,
              child: Row(
                children: [
                  //left
                  SizedBox(
                    height: AppLayouts.getHeight(context, 20),
                    width: AppLayouts.getWidth(context, 10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:
                            isColor == null ? AppStyles.bgColor : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  DotLineView(
                    isColor: isColor,
                  ),
                  //right
                  SizedBox(
                    height: AppLayouts.getHeight(context, 20),
                    width: AppLayouts.getWidth(context, 10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:
                            isColor == null ? AppStyles.bgColor : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //3rd card
            Container(
              padding: EdgeInsets.only(
                  top: 5,
                  left: isMargin == null ? 16 : 0,
                  right: isMargin == null ? 16 : 0,
                  bottom: isMargin == null ? 16 : 0),
              decoration: BoxDecoration(
                  color: isColor == null ? AppStyles.orangeColor : Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticketList['date'],
                        style: isColor == null
                            ? AppStyles.whiteHeading3
                            : AppStyles.blackHeading3,
                      ),
                      Text(
                        "Date",
                        style: isColor == null
                            ? AppStyles.whiteHeading3
                            : AppStyles.heading3,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        ticketList['time'],
                        style: isColor == null
                            ? AppStyles.whiteHeading3
                            : AppStyles.blackHeading3,
                      ),
                      Text(
                        "Depature time",
                        style: isColor == null
                            ? AppStyles.whiteHeading3
                            : AppStyles.heading3,
                      ),
                    ],
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${ticketList['planeNumber']}",
                        style: isColor == null
                            ? AppStyles.whiteHeading3
                            : AppStyles.blackHeading3,
                      ),
                      Text(
                        "Number",
                        style: isColor == null
                            ? AppStyles.whiteHeading3
                            : AppStyles.heading3,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
