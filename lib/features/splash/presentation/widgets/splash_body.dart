import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/rout.dart';
import 'package:fruit_market/core/utils/constant/color.dart';
import 'package:fruit_market/core/utils/constant/imageasset.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';
import 'package:fruit_market/features/onboarding/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [Appcolor.backgroundcolor, Appcolor.splashColor])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              VirtecalSpace(SizeConfig.defaultSize),
              Image.asset(
                AppImageAsset.splashView,
                height: SizeConfig.defaultSize! * 20,
              ),
              VirtecalSpace(SizeConfig.defaultSize! / 2),
              FadeTransition(
                opacity: fadingAnimation!,
                child: Center(
                  child: Text("Smart Shop",
                      style: TextStyle(
                          fontSize: 51,
                          color: Appcolor.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          CircularProgressIndicator(
            color: Appcolor.socundColor,
            backgroundColor: Appcolor.primaryColor,
            semanticsLabel: "Loading",
            semanticsValue: "Loading",
            strokeWidth: 5,
          )
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAllNamed(_auth.currentUser != null ? AppRoute.homescreen : AppRoute.language,
         
        );
      },
    );
  }
}
