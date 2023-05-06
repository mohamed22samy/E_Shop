import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constant/color.dart';


class CustomIndicator extends StatelessWidget {
   CustomIndicator({  this.dotIndex});
  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: Appcolor.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Appcolor.primaryColor))),
      dotsCount: 3,
      position: dotIndex!,
    );
  }
}
