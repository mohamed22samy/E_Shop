import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constant/color.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';

class CustomGeneralButton extends StatelessWidget {
  CustomGeneralButton({this.text, this.onTap});
  final void Function()? onTap;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Appcolor.primaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
            child: Text(
          text!,
          style: TextStyle(
            fontSize: 14,
            color: Appcolor.white,
            fontWeight: FontWeight.w500,
          ),
          softWrap: false,
        )),
      ),
    );
  }
}

class CustomButonWithIcon extends StatelessWidget {
  const CustomButonWithIcon(
      {super.key, this.onTap, this.iconData, this.color, this.text});
  final void Function()? onTap;
  final IconData? iconData;
  final Color? color;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xFF707070)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
              size: 35,
            ),
            HorizintalSpace(1),
            Text(
              text!,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color(0xff000000)),
              textAlign: TextAlign.left,
            )
          ],
        ),
      ),
    );
  }
}
