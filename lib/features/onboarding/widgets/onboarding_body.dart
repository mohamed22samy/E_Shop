import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constant/color.dart';
import 'package:fruit_market/core/rout.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/features/auth/prsentation/pages/login/login_view.dart';
import 'package:fruit_market/features/onboarding/widgets/custom_indicator.dart';
import 'package:fruit_market/features/onboarding/widgets/custom_page_view.dart';
import 'package:get/get.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
            bottom: SizeConfig.defaultSize! * 17,
            right: SizeConfig.defaultSize! * 0,
            left: SizeConfig.defaultSize! * 0,
            child: CustomIndicator(
              dotIndex: pageController!.hasClients ? pageController?.page : 0,
            )),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 5,
            child: InkWell(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.jumpToPage(2);
                }
              },
              child: Text(
                "skip".tr,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Appcolor.text,
                ),
                softWrap: false,
              ),
            ),
          ),
        ),
        Positioned(
            right: SizeConfig.defaultSize! * 8,
            left: SizeConfig.defaultSize! * 8,
            bottom: SizeConfig.defaultSize! * 8,
            child: CustomGeneralButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() => LoginView(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 500));
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2
                      ? "buttomGetstart".tr
                      : "buttomNext".tr)
                  : "buttomNext".tr,
            ))
      ],
    );
  }
}
