import 'package:ticket_booking/utils/exports.dart';

class TicketViewAll extends StatelessWidget {
  const TicketViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppStyles.bgColor,
        title: Text(
          "Tickets",
          style: AppStyles.heading1,
        ),
      ),
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          addVerticleSpace(10),
          SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketInfo
                  .map(
                    (e) => TicketView(isWidth: true, ticketList: e),
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
