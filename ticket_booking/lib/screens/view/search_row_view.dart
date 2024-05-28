import 'package:flutter/material.dart';

import '../../utils/app_layouts.dart';
import '../../utils/app_style.dart';
import '../../utils/spacer.dart';

class SearchRowView extends StatelessWidget {
  const SearchRowView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayouts.getSize(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayouts.getHeight(context, 10),
            vertical: AppLayouts.getWidth(context, 10),
          ),
          height: AppLayouts.getHeight(context, 435),
          width: size.width * 0.42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                width: size.width * 0.35,
                height: 170,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayouts.getHeight(context, 10),
                  vertical: AppLayouts.getHeight(context, 10),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img2.png"))),
              ),
              addVerticleSpace(10),
              Text(
                "20% discount on business class ticket from Airline On International",
                style: AppStyles.heading1.copyWith(fontSize: 24),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              width: size.width * 0.44,
              height: AppLayouts.getHeight(context, 220),
              padding: EdgeInsets.symmetric(
                horizontal: AppLayouts.getHeight(context, 10),
                vertical: AppLayouts.getHeight(context, 10),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.cyan),
              child: Column(
                children: [
                  Text(
                    "Discount for survey",
                    style: AppStyles.heading1.copyWith(color: Colors.white),
                  ),
                  addVerticleSpace(5),
                  Text(
                      "Take the survey about our services and get discount upto 10%.",
                      style: AppStyles.heading3.copyWith(color: Colors.white)),
                ],
              ),
            ),
            addVerticleSpace(10),
            Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayouts.getHeight(context, 10),
                  vertical: AppLayouts.getHeight(context, 10),
                ),
                height: AppLayouts.getHeight(context, 205),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 235, 116, 116)),
                child: Column(
                  children: [
                    Text("Take Love",
                        style:
                            AppStyles.heading2.copyWith(color: Colors.white)),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(text: ' 😍', style: TextStyle(fontSize: 30)),
                      TextSpan(text: '🥰', style: TextStyle(fontSize: 50)),
                      TextSpan(text: '😘', style: TextStyle(fontSize: 30))
                    ]))
                  ],
                )),
          ],
        ),
      ],
    );
  }
}