import 'package:flutter/material.dart';
import 'color.dart';
Uri rateUriApp =
    Uri.parse("https://www.facebook.com/profile.php?id=100008159504132");

ThemeData themeEnglish = ThemeData(//عملت متغير من نوع السيم داتا
  fontFamily: "static", //عندي مشكله في موضوع الخطوط
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Appcolor.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: Appcolor.black),
      bodyText1: TextStyle(fontSize: 15, height: 1.5, color: Appcolor.text),
      bodyText2: TextStyle(fontSize: 13, height: 1.5, color: Appcolor.text)),
 
);

ThemeData themeArabic = ThemeData(//عملت متغير من نوع السيم داتا
  fontFamily: "Cairo", //عندي مشكله في موضوع الخطوط
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Appcolor.black),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: Appcolor.black),
      bodyText1: TextStyle(fontSize: 15, height: 1.5, color: Appcolor.text),
      bodyText2: TextStyle(fontSize: 13, height: 1.5, color: Appcolor.text)),
  
);
 