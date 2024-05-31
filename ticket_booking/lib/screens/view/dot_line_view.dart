import 'package:flutter/material.dart';
import '../../utils/app_layouts.dart';

class DotLineView extends StatelessWidget {
  final bool? isColor;
  const DotLineView({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / 15).floor(),
              (index) => SizedBox(
                    height: AppLayouts.getHeight(context, 5),
                    width: AppLayouts.getWidth(context, 1),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ? Colors.white : Colors.grey),
                    ),
                  )),
        );
      },
    );
  }
}
