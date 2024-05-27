import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/hotel_view.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_data_list.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/utils/spacer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          addVerticleSpace(40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.heading3,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.heading1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/img1.png"),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
                addVerticleSpace(25),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: AppStyles.heading4,
                      ),
                    ],
                  ),
                ),
                addVerticleSpace(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: AppStyles.heading2,
                    ),
                    InkWell(
                      onTap: () {
                        //function
                      },
                      child: Text(
                        "View all",
                        style: AppStyles.textStyle
                            .copyWith(color: AppStyles.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          addVerticleSpace(15),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  ticketInfo.map((e) => TicketView(ticketList: e)).toList(),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: AppStyles.heading2,
                ),
                InkWell(
                  onTap: () {
                    //function
                  },
                  child: Text(
                    "View all",
                    style: AppStyles.textStyle
                        .copyWith(color: AppStyles.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          addVerticleSpace(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelInfo.map((e) => HotelView(hotelList: e)).toList(),
            ),
          ),
          addVerticleSpace(40),
        ],
      ),
    );
  }
}
