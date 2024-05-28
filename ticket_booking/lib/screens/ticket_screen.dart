import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/view/two_row_clickable_view.dart';
import 'package:ticket_booking/utils/app_layouts.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/utils/spacer.dart';

import '../widgets/plane_container.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: AppLayouts.getWidth(context, 20),
            horizontal: AppLayouts.getWidth(context, 20)),
        children: [
          addVerticleSpace(20),
          Text(
            "Tickets",
            style: AppStyles.heading1,
          ),
          addVerticleSpace(20),
          const RowClickable(row1Text: "Upcomming", row2Text: "previous"),
          addVerticleSpace(20),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "PNQ",
                          style: AppStyles.blackHeading3,
                        ),
                        const Spacer(),
                        const PlaneContainer(
                          color: Colors.cyan,
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
                                          (index) => const SizedBox(
                                                width: 3,
                                                height: 1,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    color: Colors.cyan,
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
                                  color: Colors.cyan,
                                ),
                              ),
                            ),
                          ],
                        )),
                        const PlaneContainer(
                          color: Colors.cyan,
                        ),
                        const Spacer(),
                        Text(
                          "BNG",
                          style: AppStyles.blackHeading3,
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
                            "Pune",
                            style: AppStyles.blackHeading4,
                          ),
                        ),
                        Text(
                          "8H 30M",
                          style: AppStyles.blackHeading4,
                        ),
                        SizedBox(
                          width: AppLayouts.getWidth(context, 100),
                          child: Text(
                            "Bengluru",
                            textAlign: TextAlign.end,
                            style: AppStyles.blackHeading4,
                          ),
                        ),
                      ],
                    ),
                    //3rd card
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
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
                                "19 May",
                                style: AppStyles.blackHeading3,
                              ),
                              Text(
                                "Date",
                                style: AppStyles.blackHeading3,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "08:00 AM",
                                style: AppStyles.blackHeading3,
                              ),
                              Text(
                                "Depature time",
                                style: AppStyles.blackHeading3,
                              ),
                            ],
                          ),
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "planeNumber",
                                style: AppStyles.blackHeading3,
                              ),
                              Text(
                                "Number",
                                style: AppStyles.blackHeading3,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
