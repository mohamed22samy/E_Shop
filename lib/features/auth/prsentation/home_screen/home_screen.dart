import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constant/imageasset.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/localization/changelocal.dart';
import '../../../../core/rout.dart';
import '../../../../core/utils/constant/apptheme.dart';
import '../../../../core/utils/constant/color.dart';
import '../../../../core/utils/size_config.dart';
import '../details_screen/widgets/home/home_body.dart';

class Homescreen extends StatelessWidget {
  void rateApp() async {
    //rate fanction to usefull..
    if (!await launchUrl(rateUriApp, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $rateUriApp';
    }
  }

  final user = FirebaseAuth.instance.currentUser!;
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    void shareApp() {
      //share fanction to usefull..
      Share.share(
          '''*Smart Store App*\n you can Enquiry it from my facebook facebook.com/Mohamed Elshora ''');
      Navigator.pop(context);
    }

    return Scaffold(
      drawer: Drawer(
          backgroundColor: Appcolor.backgroundcolor,
          child: Column(children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Appcolor.primaryColor),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Appcolor.backgroundcolor,
                child: Image.asset(
                  AppImageAsset.logo,
                  fit: BoxFit.cover,
                  height: SizeConfig.defaultSize! * 7,
                ),
              ),
              
              accountEmail: Text(user.email!),
              accountName: null,
            ),
            GetBuilder<Localcontroller>(
              builder: (controller) => ListTile(
                title: Text("language".tr, style: TextStyle(fontSize: 18)),
                leading: Icon(
                  Icons.language_outlined,
                  color: Appcolor.primaryColor,
                ),
                onTap: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.info,
                    animType: AnimType.rightSlide,
                    title: "language".tr,
                    desc: "languageDes".tr,
                    btnOkText: "okArabic".tr,
                    btnCancelText: "canEnglish".tr,
                    btnOkOnPress: () {
                      controller.changelang("ar");
                    },
                    btnCancelOnPress: () {
                      controller.changelang("en");
                    },
                  ).show();
                },
              ),
            ),
            ListTile(
              title: Text("rate".tr, style: TextStyle(fontSize: 18)),
              leading: Icon(
                Icons.rate_review,
                color: Appcolor.primaryColor,
              ),
              onTap: () {
                rateApp();
              },
            ),
            ListTile(
              title: Text("share".tr, style: TextStyle(fontSize: 18)),
              leading: Icon(
                Icons.share,
                color: Appcolor.primaryColor,
              ),
              onTap: () {
                shareApp();
              },
            ),
            ListTile(
              title: Text("logout".tr, style: TextStyle(fontSize: 18)),
              leading: Icon(
                Icons.exit_to_app,
                color: Appcolor.red,
              ),
              onTap: () {
                FirebaseAuth.instance.signOut(); //لتسجيل خروج المستخدم
                Get.offAllNamed(AppRoute.loginView);
              },
            )
          ])),
      backgroundColor: Appcolor.primaryColor,
      appBar: homeAppBAr(),
      body: const HomeBody(),
    );
  }

  AppBar homeAppBAr() {
    return AppBar(
      backgroundColor: Appcolor.primaryColor,
      elevation: 0,
      title: Text("welcome title".tr,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Appcolor.white)),
    );
  }
}
