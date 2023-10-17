import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class HorizontalSeparator extends StatelessWidget {
  final double height;
  final Color color;

  const HorizontalSeparator({super.key, this.height = 1, this.color = AppColor.gray});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 6.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2.1 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}

class VirtecalSeparator extends StatelessWidget {
  final double height;
  final Color color;

  const VirtecalSeparator({this.height = 1, this.color = AppColor.gray});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainHeight();
        final dashWidth = 2.0;
        final dashHeight = 5.0;
        final dashCount = (boxWidth / (2.1 * dashHeight)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.vertical,
        );
      },
    );
  }
}