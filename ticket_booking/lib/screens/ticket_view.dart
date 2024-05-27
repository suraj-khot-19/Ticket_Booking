import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_layouts.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/utils/spacer.dart';

import '../widgets/plane_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketList;
  const TicketView({required this.ticketList, super.key});
  @override
  Widget build(BuildContext context) {
    final size = AppLayouts.getSize(context);

    return SizedBox(
      width: size.width * 0.80, //80% of width
      height: AppLayouts.getHeight(context, 200), //main height for card
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //1st card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticketList['place1'],
                        style: AppStyles.whiteHeading3,
                      ),
                      const Spacer(),
                      const PlaneContainer(),
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
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )));
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      const PlaneContainer(),
                      const Spacer(),
                      Text(
                        ticketList['place2'],
                        style: AppStyles.whiteHeading3,
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
                          ticketList['place1_2'],
                          style: AppStyles.whiteHeading4,
                        ),
                      ),
                      Text(
                        "${ticketList['duration']}",
                        style: AppStyles.whiteHeading4,
                      ),
                      SizedBox(
                        width: AppLayouts.getWidth(context, 100),
                        child: Text(
                          ticketList['place2_2'],
                          textAlign: TextAlign.end,
                          style: AppStyles.whiteHeading4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //2nd card
            Container(
              color: AppStyles.orangeColor,
              child: Row(
                children: [
                  //left
                  SizedBox(
                    height: AppLayouts.getHeight(context, 20),
                    width: AppLayouts.getWidth(context, 10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    height: AppLayouts.getHeight(context, 5),
                                    width: AppLayouts.getWidth(context, 1),
                                    child: const DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  //right
                  SizedBox(
                    height: AppLayouts.getHeight(context, 20),
                    width: AppLayouts.getWidth(context, 10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
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
              padding: const EdgeInsets.only(
                  top: 5, left: 16, right: 16, bottom: 16),
              decoration: BoxDecoration(
                  color: AppStyles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        ticketList['date'],
                        style: AppStyles.whiteHeading3,
                      ),
                      Text(
                        "Date",
                        style: AppStyles.whiteHeading3,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        ticketList['time'],
                        style: AppStyles.whiteHeading3,
                      ),
                      Text(
                        "Depature time",
                        style: AppStyles.whiteHeading3,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "${ticketList['planeNumber']}",
                        style: AppStyles.whiteHeading3,
                      ),
                      Text(
                        "Number",
                        style: AppStyles.whiteHeading3,
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
