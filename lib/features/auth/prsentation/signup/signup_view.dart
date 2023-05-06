import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constant/color.dart';
import 'package:fruit_market/features/auth/prsentation/pages/login/widgets/login_view_body.dart';
import 'package:fruit_market/features/auth/prsentation/signup/widgets/signup_controller.dart';
import 'package:fruit_market/features/auth/prsentation/signup/widgets/signup_view_body.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp()); //injection
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "signup"
                  .tr, //عملت كده عشان اما اختار عربي البرنامج يحول معاه اللغه
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Appcolor.text),
            ),
          ),
          backgroundColor: Appcolor.backgroundcolor,
          elevation: 0.0,
        ),
        backgroundColor: Appcolor.backgroundcolor,
        body: GetBuilder<SignUpControllerImp>(
            builder: (controller) => ModalProgressHUD(
                color: Appcolor.backgroundcolor,
                progressIndicator:
                    CircularProgressIndicator(color: Appcolor.primaryColor,),
                inAsyncCall: controller.showSpinner,
                child: SignUpViewBody())));
  }
}
