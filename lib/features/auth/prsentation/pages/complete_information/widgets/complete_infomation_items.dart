import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';

import '../../../../../../core/widgets/costom_text_field.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem(
      {Key? key, required this.text, this.inputType, this.maxLines})
      : super(key: key);
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            
            fontSize: 16,
            color: Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior:
              const TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        VirtecalSpace(2),
        CustomTextFormField(
          maxLines: maxLines,
          inputType: inputType,
        )
      ],
    );
  }
}
