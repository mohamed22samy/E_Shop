import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/services.dart';
import '../utils/constant/apptheme.dart';

class Localcontroller extends GetxController {
  Locale? language; //متغير من نوع لوكال بيقبل قيمه النال اسمه لنجويج

  Myservices myservices = Get.find();

  ThemeData apptheme = themeEnglish;

  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myservices.sharedPreferences.setString("lang",
        langcode); //استخدمنا الشير بريفرانسس عشان اللغه تنحغز ومش كل اما افتح التطبيق ميجبليش لختار اللغه
    apptheme = langcode == "ar"
        ? themeArabic
        : themeEnglish; //الاب سيم  لو الانج كود بيساوي الاعربي هيشتغل بالمتغير العربي لو لا هيشتغل بالانجليزي
    Get.changeTheme(apptheme);
    Get.updateLocale(locale); 
  }

  @override
  void onInit() {
    String? sharedpreflang = myservices.sharedPreferences.getString("lang");
    if (sharedpreflang == "ar") {
      language = const Locale("ar");
      apptheme = themeArabic;
    } else if (sharedpreflang == "en") {
      language = const Locale("en");
      apptheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
       apptheme = themeEnglish;

    }

    super.onInit();
  }
}
