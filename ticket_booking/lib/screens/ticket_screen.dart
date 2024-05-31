import 'package:ticket_booking/utils/exports.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: AppLayouts.getWidth(context, 20),
                horizontal: AppLayouts.getWidth(context, 20)),
            children: [
              addVerticleSpace(AppLayouts.getHeight(context, 40)),
              Text(
                "Tickets",
                style: AppStyles.heading1,
              ),
              addVerticleSpace(AppLayouts.getHeight(context, 10)),
              const RowClickable(row1Text: "Upcomming", row2Text: "previous"),
              addVerticleSpace(AppLayouts.getHeight(context, 20)),
              Container(
                height: AppLayouts.getHeight(context, 540),
                width: AppLayouts.getWidth(context, 340),
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayouts.getWidth(context, 20),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayouts.getWidth(context, 10),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppLayouts.getHeight(context, 20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    addVerticleSpace(AppLayouts.getHeight(context, 10)),
                    TicketView(
                      ticketList: ticketInfo[0],
                      isColor: true,
                      isPlaneColor: true,
                      isMargin: true,
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 106, 122, 129),
                      thickness: 1,
                    ),
                    //first tab

                    addVerticleSpace(AppLayouts.getHeight(context, 3)),
                    const TwoRowView(
                        title1: "Flutter DB",
                        title2: "1235468",
                        subTitle1: "Passanger",
                        subTitle2: "passport"),
                    // const DotLineView(
                    //   isColor: true,
                    // ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DotLineView(
                          isColor: true,
                        ),
                      ),
                    ),
                    //secound tab
                    const TwoRowView(
                        title1: "25684 12354",
                        title2: "X12456",
                        subTitle1: "Number of e-ticket",
                        subTitle2: "Booking code"),
                    // const DotLineView(
                    //   isColor: true,
                    // ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DotLineView(
                          isColor: true,
                        ),
                      ),
                    ),
                    //third tab
                    const TwoRowView(
                        title1: "*** 1845",
                        title2: '₹ 25,000',
                        subTitle1: "Payment method",
                        isImage: true,
                        subTitle2: "Price"),
                    addVerticleSpace(
                      AppLayouts.getHeight(context, 20),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BarcodeWidget(
                        data: 'https://github.com/suraj-khot-19',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: AppStyles.textColor,
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                    addVerticleSpace(
                      AppLayouts.getHeight(context, 20),
                    ),
                  ],
                ),
              ),
              addVerticleSpace(
                AppLayouts.getHeight(context, 50),
              ),
              TicketView(ticketList: ticketInfo[0]),
              addVerticleSpace(
                AppLayouts.getHeight(context, 20),
              ),
            ],
          ),
          Positioned(
            left: 9,
            top: 400,
            child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppStyles.textColor),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: AppStyles.textColor,
                )),
          ),
          Positioned(
            right: 9,
            top: 400,
            child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppStyles.textColor),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: AppStyles.textColor,
                )),
          ),
        ],
      ),
    );
  }
}
