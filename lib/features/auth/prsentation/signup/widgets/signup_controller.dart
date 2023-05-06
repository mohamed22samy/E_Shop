import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../core/rout.dart';
import '../../../../../core/utils/constant/color.dart';

abstract class SignUpController extends GetxController {
  signUp();
  openloginScreen();
  showpasswordd2();
  passwordConfirmed();
  showpassword();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool isshowpassword = true;
  bool isshowpassword2 = true;
  bool showSpinner =
      false; // valiable to ModalProgressHUD to loading when registration.

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  Future signUp() async {
    if (formstate.currentState!.validate()) {
      showSpinner = true;
      update();
      try {
        final newUser = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text.trim(),
                password: passwordController.text.trim());
        if (passwordConfirmed()) {
          Get.offAllNamed(AppRoute.auth);
          showSpinner = false;
          update();
        }
      } catch (e) {
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
            middleText: "34".tr);
      }
    }
  }

  showpasswordd2() {
    isshowpassword2 = isshowpassword2 == true ? false : true;

    update();
  }

  bool passwordConfirmed() {
    if (passwordController.text.trim() ==
        confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  void openloginScreen() {
    Get.offAllNamed(AppRoute.loginView);
  }

  @override
  void dispose() {
    //عشان يتعطلو لو مش بستعملهم
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  @override
  showpassword() {
    isshowpassword = isshowpassword == true
        ? false
        : true; //دي فانكشن عند الضعط عي الايكون لو كلمه المرور ظاهره هيخفيها والعكس

    update(); //عشان يعدل في اليو اي علطول
  }
}
