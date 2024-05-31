import 'package:ticket_booking/utils/exports.dart';

class RowClickable extends StatelessWidget {
  final String row1Text, row2Text;
  final Widget? tab1Widget, tab2Widget;
  const RowClickable(
      {this.tab1Widget,
      this.tab2Widget,
      required this.row1Text,
      required this.row2Text,
      super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayouts.getSize(context);
    return FittedBox(
      child: Container(
        height: AppLayouts.getHeight(context, 40),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(AppLayouts.getHeight(context, 60)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            //Airline Ticket
            InkWell(
              onTap: () {
                if (tab1Widget != null) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return tab1Widget!;
                  }));
                }
              },
              child: Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayouts.getHeight(context, 7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left:
                            Radius.circular(AppLayouts.getHeight(context, 50))),
                    color: Colors.white),
                child: Center(
                    child: Text(
                  row1Text,
                  style: AppStyles.textStyle.copyWith(
                      color: Colors.black, fontWeight: FontWeight.normal),
                )),
              ),
            ),
            //hotels
            InkWell(
              onTap: () {
                if (tab2Widget != null) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return tab2Widget!;
                  }));
                }
              },
              child: Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayouts.getHeight(context, 7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(
                        AppLayouts.getHeight(context, 50),
                      ),
                    ),
                    color: Colors.transparent),
                child: Center(
                    child: Text(row2Text,
                        style: AppStyles.textStyle.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.normal))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
