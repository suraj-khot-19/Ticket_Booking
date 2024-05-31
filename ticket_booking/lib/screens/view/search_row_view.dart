import 'package:ticket_booking/utils/exports.dart';

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
          height: AppLayouts.getHeight(context, 500),
          width: size.width * 0.42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 4)]),
          child: Column(
            children: [
              Container(
                width: size.width * 0.35,
                height: 180,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayouts.getHeight(context, 10),
                  vertical: AppLayouts.getHeight(context, 10),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, blurRadius: 2)
                    ],
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img2.png"))),
              ),
              addVerticleSpace(10),
              Icon(
                FluentSystemIcons.ic_fluent_airplane_filled,
                color: AppStyles.primaryColor,
                size: AppLayouts.getHeight(context, 30),
              ),
              addVerticleSpace(5),
              Text(
                "Get 20% discount on business class ticket's from S-Ticket Airline's",
                style: AppStyles.heading1.copyWith(fontSize: 22),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width * 0.44,
                  height: AppLayouts.getHeight(context, 275),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayouts.getHeight(context, 10),
                    vertical: AppLayouts.getHeight(context, 10),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 4)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount \nfor survey",
                        style: AppStyles.heading1.copyWith(color: Colors.white),
                      ),
                      addVerticleSpace(5),
                      Text(
                          "Take a survey about our services and get discount upto 10%.",
                          style: AppStyles.heading2
                              .copyWith(color: Colors.grey.shade800)),
                    ],
                  ),
                ),
                Positioned(
                  right: -30,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      border: Border.all(width: 15, color: AppStyles.bgColor),
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
            addVerticleSpace(20),
            Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayouts.getHeight(context, 10),
                  vertical: AppLayouts.getHeight(context, 10),
                ),
                height: AppLayouts.getHeight(context, 200),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 235, 116, 116),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 4)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    addVerticleSpace(
                      AppLayouts.getHeight(context, 5),
                    ),
                    Text("Take Love",
                        style:
                            AppStyles.heading2.copyWith(color: Colors.white)),
                    addVerticleSpace(
                      AppLayouts.getHeight(context, 10),
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(text: '😍', style: TextStyle(fontSize: 30)),
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
