import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/rout.dart';
import 'package:fruit_market/core/utils/constant/color.dart';
import 'package:fruit_market/core/utils/constant/imageasset.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../../core/function/alertexitapp.dart';
import '../../../../../../core/validinput.dart';
import '../../../../../../core/widgets/customtextformfield.dart';
import 'login_controller.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});
  Widget build(BuildContext context) {
    Get.put(LogincontrollerImp()); //injection

    return WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LogincontrollerImp>(
            builder: (controller) => Form(
                    key: controller.formstate,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) => SafeArea(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 15, left: 15, top: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                VirtecalSpace(1),
                                Text(
                                  "welcome".tr,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                VirtecalSpace(2),
                                Image.asset(
                                  AppImageAsset.splashView,
                                  fit: BoxFit.cover,
                                  height: SizeConfig.defaultSize! * 20,
                                ),
                                VirtecalSpace(4),
                                GetBuilder<LogincontrollerImp>(
                                  builder: (controller) => Customtextformauth(
                                    valid: (val) {
                                      return validinput(val!, 10, 50, "email");
                                    },
                                    hinttext:"email2".tr,
                                    labletext: "email".tr,
                                    iconData1: Icons.email_outlined,
                                    iconData2: Icons.person,
                                    maxLength: 30,
                                    keyboardType: TextInputType.emailAddress,
                                    mycontroller: controller
                                        .emailController, //المتغير الي بيتحفظ فيه المدخلات
                                  ),
                                ),
                                GetBuilder<LogincontrollerImp>(
                                    builder: (controller) => Customtextformauth(
                                          //حطينا الكستوم تيكست فورم فيللد في جيت بيلدر عشان يحصله ريفريش
                                          valid: (val) {
                                            return validinput(
                                                val!, 6, 30, "password");
                                          },
                                          hinttext:"pass2".tr,
                                          labletext:"pass".tr,
                                          iconData1:
                                              Icons.remove_red_eye_outlined,
                                          iconData2: Icons.person,
                                          pass: controller
                                              .isshowpassword, // isshowpassword,
                                          onTapPass: () {
                                            controller.showpassword();
                                          },
                                          maxLength: 20,

                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          mycontroller:
                                              controller.passwordController,
                                        )),
                                VirtecalSpace(2),
                                GetBuilder<LogincontrollerImp>(
                                  builder: (controller) => Container(
                                    child: MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 110),
                                      color: Appcolor.primaryColor,
                                      onPressed: controller.signIn,
                                      textColor: Colors.white,
                                      child:  Text(
                                        "signin".tr,
                                        style:const TextStyle(
                                            color: Appcolor.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(
                                      SizeConfig.defaultSize! * 1.5),
                                  child: Row(
                                    children: [
                                      Text(
                                        "s1".tr,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      GetBuilder<LogincontrollerImp>(
                                          builder: (controller) => InkWell(
                                              onTap: () {
                                                controller.opensignupScreen();
                                              },
                                              child: Text(
                                                "s2".tr,
                                                style: const TextStyle(
                                                    color:
                                                        Appcolor.primaryColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              )))
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: CustomButonWithIcon(
                                          iconData: Icons.g_mobiledata_outlined,
                                          color: Colors.red,
                                          text:"logWith".tr,
                                          onTap: () {
                                            Get.toNamed(
                                              AppRoute.completeInfomationView,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: CustomButonWithIcon(
                                            iconData: Icons.facebook,
                                            color: Colors.blue,
                                            text: "logWith".tr,
                                            onTap: () {
                                              Get.toNamed(AppRoute
                                                  .completeInfomationView);
                                            }),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ));
  }
}
