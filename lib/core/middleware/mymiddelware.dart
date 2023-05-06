
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../services/services.dart';

// class Mymiddelware extends GetMiddleware {
//   //صفحه المي ميدل وير دي عملناها عشان نستعملها ونخلي المستخدم لو اول مره يستعمل التطبيق يجيله صفحه اللغه و الان بوردينج لو كان مستخدمه قبل كده هيجيله علي السين اب علطو

//   @override
//   int? get priority => 1; //بتروح تجيبهم من روت ميديل واير

//   Myservices myservices = Get.find();

//   @override
//   RouteSettings? redirect(String? route) {
//     if (myservices.sharedPreferences.getString("step") == "2") {
//       return const RouteSettings(name: AppRoute.homepage);
//     }
//     // ignore: unrelated_type_equality_checks
//     if (myservices.sharedPreferences.getString("step") == "1") {
//       //بتجيبه من الاون بوردنج كنترولر
//       return const RouteSettings(
//           name: AppRoute
//               .login); //دي بتخليه يروح بق علطول علي صفحه اللوجن لو المستخدم شاف صفحه الاون بوردنج قبل كده
//     }
//     return null;
//   }
// }
