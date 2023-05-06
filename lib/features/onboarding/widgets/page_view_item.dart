import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  PageViewItem({this.tilte, this.subTitle, this.image});
  final String? tilte;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VirtecalSpace(22),
        Image.asset(
          image!,
          fit: BoxFit.cover,
          height: SizeConfig.defaultSize! * 20,
        ),
        VirtecalSpace(5),
        Text(
          tilte!,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          softWrap: false,
        ),
        VirtecalSpace(2.5),
        Text(
          subTitle!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xff78787c),
          ),
          softWrap: false,
        )
      ],
    );
  }
}
