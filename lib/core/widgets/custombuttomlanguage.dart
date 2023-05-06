import 'package:flutter/material.dart';

import '../utils/constant/color.dart';

class CustomButtomlang extends StatelessWidget {
  final String textbuttom;
  final void Function()? onPressed;
  const CustomButtomlang({super.key, required this.textbuttom, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.all(10),
          textColor: Colors.white,
          onPressed: onPressed,
          color: Appcolor.primaryColor,
          child: Text(
            textbuttom,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
    );
  }
}
