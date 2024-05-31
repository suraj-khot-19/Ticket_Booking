import 'package:ticket_booking/screens/ticket_view_all_screen.dart';
import 'package:ticket_booking/utils/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    updateMessage();
  }

  String updateMessage() {
    if (DateTime.now().hour < 12) {
      return "Good Morning";
    } else if (DateTime.now().hour < 17) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          addVerticleSpace(40),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayouts.getWidth(context, 20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          updateMessage(),
                          style: AppStyles.heading3,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.heading1,
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayouts.getHeight(context, 50),
                      width: AppLayouts.getWidth(context, 80),
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
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const TicketViewAll();
                    }));
                  },
                  child: Container(
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
                ),
                addVerticleSpace(40),
                const AppRowText(
                  text1: 'Upcoming Flights',
                  text2: 'View all',
                  widget: TicketViewAll(),
                ),
              ],
            ),
          ),
          addVerticleSpace(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketInfo
                  .take(3)
                  .map((e) => TicketView(ticketList: e))
                  .toList(),
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const AppRowText(
                text1: 'Hotels',
                text2: 'View all',
                widget: HotelViewAll(),
              )),
          addVerticleSpace(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelInfo
                  .take(3)
                  .map((e) => HotelView(hotelList: e))
                  .toList(),
            ),
          ),
          addVerticleSpace(40),
        ],
      ),
    );
  }
}
