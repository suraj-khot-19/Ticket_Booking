import 'package:ticket_booking/utils/exports.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotelList;
  final bool? isWidth;
  const HotelView({required this.hotelList, this.isWidth, super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayouts.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 17, top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      width: isWidth == null ? size.width * 0.6 : size.width,
      height: AppLayouts.getHeight(context, isWidth == null ? 330 : 450),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: isWidth == null ? Colors.grey.shade200 : AppStyles.bgColor,
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ],
          color: AppStyles.primaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayouts.getHeight(context, isWidth == null ? 180 : 300),
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
