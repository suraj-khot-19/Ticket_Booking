import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/view/two_row_clickable_view.dart';
import 'package:ticket_booking/utils/app_icon_file.dart';
import 'package:ticket_booking/utils/app_layouts.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/utils/spacer.dart';

import '../utils/row_text_app.dart';
import 'view/search_row_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayouts.getWidth(context, 20),
            vertical: AppLayouts.getHeight(context, 20)),
        children: [
          addVerticleSpace(AppLayouts.getHeight(context, 40)),
          Text(
            "What are \nyou looking for?",
            style: AppStyles.heading1.copyWith(fontSize: 36),
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 20)),
          const RowClickable(row1Text: "Airline Ticket", row2Text: "Hotels"),
          addVerticleSpace(AppLayouts.getHeight(context, 25)),
          const AppIconFile(
              icon: Icons.flight_takeoff_rounded, text: "Depature"),
          addVerticleSpace(AppLayouts.getHeight(context, 20)),
          const AppIconFile(icon: Icons.flight_land_rounded, text: "Arrival"),
          addVerticleSpace(AppLayouts.getHeight(context, 25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayouts.getWidth(context, 12),
                horizontal: AppLayouts.getWidth(context, 15)),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(AppLayouts.getHeight(context, 10)),
              color: const Color.fromARGB(255, 29, 74, 111),
            ),
            child: Center(
              child: Text(
                "Find Ticket",
                style: AppStyles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          addVerticleSpace(
            AppLayouts.getHeight(context, 40),
          ),
          const AppRowText(
            text1: 'Upcoming Flights',
            text2: 'View all',
          ),
          addVerticleSpace(
            AppLayouts.getHeight(context, 20),
          ),
          const SearchRowView(),
          addVerticleSpace(20),
        ],
      ),
    );
  }
}
