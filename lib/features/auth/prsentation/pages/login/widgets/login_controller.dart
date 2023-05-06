import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../core/rout.dart';
import '../../../../../../core/services/services.dart';
import '../../../../../../core/utils/constant/color.dart';

abstract class Logincontroller extends GetxController {
  signIn();

  showpassword();
}

class LogincontrollerImp extends Logincontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  Myservices myservices = Get.find();
  bool isshowpassword = true;

  bool showSpinner =
      false; // valiable to ModalProgressHUD to loading when registration.

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future signIn() async {
    if (formstate.currentState!.validate()) {
      showSpinner = true;
      update();
      try {
        final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim());
        if (user != null) {
          Get.offAllNamed(AppRoute.homescreen);
          showSpinner = false;
          update();
        }
      } catch (_) {
        showSpinner = false;
        update();
        Get.defaultDialog(
            contentPadding:
                const EdgeInsets.only(right: 20, left: 20, bottom: 25),
            titlePadding: const EdgeInsets.all(20),
            backgroundColor: Appcolor.backgroundcolor,
            titleStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            title: "25".tr,
            middleText: "32".tr);
      }

      update();
    }
  }

  @override
  void dispose() {
    //عشان يتعطلو لو مش بستعملهم
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void opensignupScreen() {
    Get.offAllNamed(AppRoute.signUpView);
  }

  @override
  showpassword() {
    isshowpassword = isshowpassword == true
        ? false
        : true; //دي فانكشن عند الضعط عي الايكون لو كلمه المرور ظاهره هيخفيها والعكس

    update(); //عشان يعدل في اليو اي علطول
  }
}
