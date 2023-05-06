import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/routes.dart';
import 'package:get/get.dart';

import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservices();
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});

  @override
  Widget build(BuildContext context) {
    Localcontroller controller = Get.put(Localcontroller());
    return GetMaterialApp(
      translations: Mytranslation(),
      locale: controller.language,
      title: 'E Shop',
      theme: controller.apptheme,
      debugShowCheckedModeBanner: false,
      // home: SplashView(),
      getPages: routes,
    );
  }
}
