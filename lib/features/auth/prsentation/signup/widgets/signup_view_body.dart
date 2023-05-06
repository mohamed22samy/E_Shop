import 'package:flutter/material.dart';
import 'package:fruit_market/core/rout.dart';
import 'package:fruit_market/core/utils/constant/color.dart';
import 'package:fruit_market/core/utils/constant/imageasset.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';
import 'package:fruit_market/features/auth/prsentation/signup/widgets/signup_controller.dart';
import 'package:get/get.dart';

import '../../../../../../core/validinput.dart';
import '../../../../../../core/widgets/customtextformfield.dart';
import '../../../../../core/function/alertexitapp.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp()); //injection

    return WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(
          builder: (controller) => Container(
              //شيلنا الكونتينر كلو عشان الخطاء الي كان في الكنترولر لما غيرنا البوت الي ليزي بوت  وحطينا الكونتينر في جيت بيلدر
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.person,
                            color: Appcolor.primaryColor,
                            size: 130,
                          ),
                          Text(
                           "welcomeup".tr,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "infoup".tr,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    GetBuilder<SignUpControllerImp>(
                        builder: (controller) => Customtextformauth(
                              valid: (val) {
                                return validinput(val!, 10, 50, "email");
                              },
                              labletext: "email".tr,
                              hinttext: "email2".tr,
                              iconData1: Icons.email_outlined,
                              iconData2: Icons.person,
                              maxLength: 30,
                              mycontroller: controller.emailController,
                              keyboardType: TextInputType.emailAddress,
                            )),
                    GetBuilder<SignUpControllerImp>(
                      builder: (controller) => Customtextformauth(
                        valid: (val) {
                          return validinput(val!, 6, 30, "password");
                        },
                        hinttext: "pass2".tr,
                        labletext: "pass".tr,
                        iconData1: Icons.remove_red_eye_outlined,
                        iconData2: Icons.person,
                        pass: controller.isshowpassword,
                        onTapPass: () {
                          controller.showpassword();
                        },
                        maxLength: 20,
                        mycontroller: controller.passwordController,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GetBuilder<SignUpControllerImp>(
                      builder: (controller) => Customtextformauth(
                        valid: (val) {
                          return validinput(val!, 6, 30, "password");
                        },
                        hinttext: "repass2".tr,
                        labletext:"repass".tr,
                        iconData1: Icons.remove_red_eye_outlined,
                        iconData2: Icons.person,
                        pass: controller.isshowpassword2,
                        onTapPass: () {
                          controller.showpasswordd2();
                        },
                        maxLength: 20,
                        mycontroller: controller.confirmpasswordController,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GetBuilder<SignUpControllerImp>(
                      builder: (controller) => Container(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 110),
                          color: Appcolor.primaryColor,
                          onPressed: controller.signUp,
                          textColor: Colors.white,
                          child:  Text(
                            "signup".tr,
                            style:const TextStyle(
                                color: Appcolor.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.all(SizeConfig.defaultSize! * 1.5),
                      child: Row(
                        children: [
                          Text(
                            "s11".tr,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          GetBuilder<SignUpControllerImp>(
                              builder: (controller) => InkWell(
                                  onTap: () {
                                    controller.openloginScreen();
                                  },
                                  child: Text(
                                    "s22".tr,
                                    style: const TextStyle(
                                        color: Appcolor.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  )))
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
