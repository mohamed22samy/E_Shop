import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constant/color.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      contentPadding: const EdgeInsets.only(right: 20, left: 20, bottom: 25),
      titlePadding: const EdgeInsets.all(20),
      backgroundColor: Appcolor.backgroundcolor,
      
      titleStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),
       title: "26".tr,
      middleText: "27".tr,
      actions: [
        MaterialButton(
            textColor: Colors.white,
            color: Appcolor.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.symmetric(vertical: 0),
            onPressed: () {
              exit(0);
            },
            child: Text("28".tr)),
        const SizedBox(width: 8),
        MaterialButton(
            textColor: Colors.white,
            color: Appcolor.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.symmetric(vertical: 0),
            onPressed: () {
              Get.back();
            },
            child: Text("29".tr))
      ]);
  return Future.value(true);
}
