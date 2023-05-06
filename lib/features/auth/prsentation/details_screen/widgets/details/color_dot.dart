import 'package:flutter/material.dart';

import '../../../../../../core/utils/constant/color.dart';

class ColorDot extends StatelessWidget {
  final Color fillcolor;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.fillcolor,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: AppPading.kDefaultpading / 2.5),
      padding: const EdgeInsets.all(3.0),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected
                  ? Appcolor.text
                  : Colors
                      .transparent)), //لو الاز سليكت ترو اديها اللون لو لا اعملها شفافه
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillcolor),
      ),
    );
  }
}
