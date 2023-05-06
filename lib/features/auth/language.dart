

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/localization/changelocal.dart';
import '../../core/rout.dart';
import '../../core/utils/constant/color.dart';
import '../../core/widgets/custombuttomlanguage.dart';

class Language extends GetView<Localcontroller> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.backgroundcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "language".tr, //بدل اختر اللغه خليتها داينمك
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.language,
                color: Appcolor.text,
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 20,
              ),
              CustomButtomlang(
                textbuttom: 'Arabic',
                onPressed: () {
                  controller.changelang("ar");
                  Get.toNamed(AppRoute.onboardingView); //للانتقال زي النفيجاتور
                },
              ),
              CustomButtomlang(
                textbuttom: 'English',
                onPressed: () {
                  controller.changelang("en");
                  Get.toNamed(AppRoute.onboardingView);
                },
              )
            ]),
          ),
        ],
      ),
    );
  }
}
