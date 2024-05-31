import 'package:ticket_booking/utils/exports.dart';

class HotelViewAll extends StatelessWidget {
  const HotelViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppStyles.bgColor,
        title: Text(
          "Hotels",
          style: AppStyles.heading1,
        ),
      ),
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          addVerticleSpace(10),
          SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            scrollDirection: Axis.vertical,
            child: Column(
              children: hotelInfo
                  .map(
                    (e) => HotelView(isWidth: true, hotelList: e),
                  )
                  .toList(),
            ),
          ),
          addVerticleSpace(50),
        ],
      ),
    );
  }
}
