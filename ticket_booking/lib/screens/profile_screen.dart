import 'package:ticket_booking/utils/exports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayouts.getHeight(context, 30),
            vertical: AppLayouts.getWidth(context, 16)),
        children: [
          addVerticleSpace(AppLayouts.getHeight(context, 40)),
          Text(
            "Profile",
            style: AppStyles.heading1,
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 20)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
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
                    style: AppStyles.heading2,
                  ),
                  Text(
                    "Pune",
                    style: AppStyles.heading3
                        .copyWith(color: Colors.grey.shade800),
                  ),
                  addVerticleSpace(AppLayouts.getHeight(context, 2)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayouts.getWidth(context, 10),
                        vertical: AppLayouts.getHeight(context, 2)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_shield_regular,
                          color: Color(0xffad9c00),
                        ),
                        addHorizontalSpace(AppLayouts.getHeight(context, 10)),
                        const Text(
                          "Premium staus",
                          style: TextStyle(
                              color: Color(0xffad9c00),
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
                style: AppStyles.heading3.copyWith(color: Colors.grey.shade700),
              ),
            ],
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 50)),
          Stack(
            children: [
              Container(
                height: AppLayouts.getHeight(context, 90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    borderRadius: BorderRadius.circular(
                        AppLayouts.getWidth(context, 20))),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 25,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        size: 27,
                        color: Colors.blue,
                      ),
                    ),
                    addHorizontalSpace(AppLayouts.getWidth(context, 5)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You got a new award",
                          style:
                              AppStyles.heading2.copyWith(color: Colors.white),
                        ),
                        Text(
                          "You'v 80 flights in a year",
                          style: AppStyles.heading3
                              .copyWith(color: Colors.white60),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 15,
                      color: AppStyles.bgColor,
                    ),
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ],
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
                "11 Jun 2024",
                style: AppStyles.heading3,
              ),
            ],
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 4)),
          Divider(
            color: Colors.grey.shade400,
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 4)),
          const TwoRowView(
              title1: "23 042",
              title2: "Airline CO",
              subTitle1: "Miles",
              subTitle2: "recived from"),
          addVerticleSpace(AppLayouts.getHeight(context, 12)),
          const DotLineView(
            isColor: true,
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 12)),
          const TwoRowView(
              title1: "24",
              title2: "Rowdy's",
              subTitle1: "Miles",
              subTitle2: "recived from"),
          addVerticleSpace(AppLayouts.getHeight(context, 12)),
          const DotLineView(
            isColor: true,
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 12)),
          const TwoRowView(
              title1: "52 304",
              title2: "Rowdy's",
              subTitle1: "Miles",
              subTitle2: "recived from"),
          addVerticleSpace(AppLayouts.getHeight(context, 24)),
          InkWell(
            onTap: () {
              //need to add
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "How to get more miles",
                style: AppStyles.heading3.copyWith(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          addVerticleSpace(AppLayouts.getHeight(context, 30)),
        ],
      ),
    );
  }
}
