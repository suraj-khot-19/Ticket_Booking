import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_layouts.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/utils/spacer.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotelList;
  const HotelView({required this.hotelList, super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayouts.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 17, top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ],
          color: AppStyles.primaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotelList['image']}"))),
          ),
          addVerticleSpace(10),
          Text(
            hotelList['name'],
            style: AppStyles.heading2.copyWith(color: AppStyles.kakiColor),
          ),
          addVerticleSpace(5),
          Text(
            "\$${hotelList['price']}/night",
            style: AppStyles.heading3.copyWith(color: Colors.white),
          ),
          addVerticleSpace(5),
          Text(
            hotelList['city'],
            style: AppStyles.heading1.copyWith(color: AppStyles.kakiColor),
          ),
        ],
      ),
    );
  }
}
