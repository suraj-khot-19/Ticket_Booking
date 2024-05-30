import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/view/two_row_view.dart';
import 'package:ticket_booking/utils/app_layouts.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/utils/spacer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayouts.getHeight(context, 25),
            vertical: AppLayouts.getWidth(context, 10)),
        children: [
          addVerticleSpace(
            AppLayouts.getHeight(context, 70),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/img1.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              addHorizontalSpace(AppLayouts.getWidth(context, 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: AppStyles.heading1,
                  ),
                  Text(
                    "Pune",
                    style: AppStyles.heading3,
                  ),
                  addVerticleSpace(AppLayouts.getHeight(context, 10)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayouts.getWidth(context, 10),
                        vertical: AppLayouts.getHeight(context, 2)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_shield_regular,
                          color: AppStyles.primaryColor,
                        ),
                        addHorizontalSpace(AppLayouts.getHeight(context, 10)),
                        const Text(
                          "Premium staus",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Text(
                "Edit",
                style: AppStyles.heading2.copyWith(color: Colors.grey.shade500),
              ),
            ],
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 50)),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: const Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        size: 40,
                        color: Colors.blue,
                      ),
                    ),
                    addHorizontalSpace(AppLayouts.getWidth(context, 20)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You'v got a new award",
                          style:
                              AppStyles.heading2.copyWith(color: Colors.white),
                        ),
                        Text(
                          "You'v 95 flights in a year",
                          style: AppStyles.heading3
                              .copyWith(color: Colors.white60),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  right: -45,
                  top: -45,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      border: Border.all(width: 15, color: Colors.white),
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 30)),
          Text(
            "Accoumulated miles",
            style: AppStyles.heading1.copyWith(color: Colors.grey.shade800),
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 20)),
          Align(
            alignment: Alignment.center,
            child: Text(
              "1854786",
              style: AppStyles.heading1
                  .copyWith(color: Colors.grey.shade800, fontSize: 35),
            ),
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Miles accured",
                style: AppStyles.heading3,
              ),
              Text(
                "11 Jun 2022",
                style: AppStyles.heading3,
              ),
            ],
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 12)),
          const TwoRowView(
              title1: "23 042",
              title2: "Airline CO",
              subTitle1: "Miles",
              subTitle2: "recived from"),
          addVerticleSpace(AppLayouts.getHeight(context, 12)),
          const TwoRowView(
              title1: "24",
              title2: "McDonal's",
              subTitle1: "Miles",
              subTitle2: "recived from"),
          addVerticleSpace(AppLayouts.getHeight(context, 12)),
          const TwoRowView(
              title1: "52 304",
              title2: "DBestech",
              subTitle1: "Miles",
              subTitle2: "recived from"),
          addVerticleSpace(AppLayouts.getHeight(context, 30)),
          Align(
            alignment: Alignment.center,
            child: Text(
              "How to get more miles",
              style: AppStyles.heading3.copyWith(
                color: Colors.blue,
              ),
            ),
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 30)),
        ],
      ),
    );
  }
}
