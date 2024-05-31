import 'package:ticket_booking/utils/exports.dart';

class AppRowText extends StatelessWidget {
  final String text1, text2;
  final Widget widget;
  const AppRowText(
      {required this.text1,
      required this.widget,
      required this.text2,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: AppStyles.heading2,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return widget;
            }));
          },
          child: Text(
            text2,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
