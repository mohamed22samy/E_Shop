import 'package:flutter/material.dart';

import '../utils/constant/color.dart';

class Customtextformauth extends StatelessWidget {
  final String hinttext;
  final String labletext;
  final IconData iconData1;
  final IconData iconData2;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool? pass;
  final int maxLength;
  final TextInputType keyboardType;
  final void Function()? onTapPass;

  const Customtextformauth({
    super.key,
    required this.hinttext,
    required this.labletext,
    required this.mycontroller,
    required this.iconData1,
    required this.iconData2,
    this.pass,
    required this.valid,
    required this.maxLength,
    required this.keyboardType,
    this.onTapPass,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      validator: valid,

      textInputAction: TextInputAction.done, //شكل علامه البحث في الكيبورد
      obscureText: pass == null || pass == false
          ? false
          : true, //لحمايه كلمه المرور لو تروو هيشتغل
      maxLines: 1, //عدد اسطر الكتابه
      maxLength: maxLength, //عدد الاحرف المسموح بكتابتها
      keyboardType: keyboardType, //نوع لوحه المفاتيح الي هتطلع للكتابه
      cursorHeight: 30, //حجم العلامه بتاعت الكتابه
      cursorColor: Appcolor.primaryColor,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 14),
          suffixIcon: InkWell(
            onTap: onTapPass,
            child: Icon(
              iconData1,
              color: Appcolor.black,
            ),
          ),
          prefixIcon: Icon(
            iconData2,
            color: Appcolor.black,
          ),
          filled: true,
          fillColor: const Color.fromARGB(181, 126, 128, 128),
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              labletext,
              style: const TextStyle(
                color: Appcolor.black,
              ),
            ),
          ),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.circular(20)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Appcolor.primaryColor, width: 2),
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Appcolor.black, width: 2),
              borderRadius: BorderRadius.circular(20))),
    );
  }
}
