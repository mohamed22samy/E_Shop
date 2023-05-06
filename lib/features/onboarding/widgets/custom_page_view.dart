import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constant/imageasset.dart';
import 'package:fruit_market/features/onboarding/widgets/page_view_item.dart';
import 'package:get/get.dart';

class CustomPageView extends StatelessWidget {
   CustomPageView({  this.pageController});
 final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          tilte: "t1".tr,
          subTitle:"b1".tr,
          image: AppImageAsset.onbordingimageone,
        ),
        PageViewItem(
          tilte:"t2".tr,
          subTitle:"b2".tr,
          image: AppImageAsset.onbordingimagetwo,
        ),
        PageViewItem(
          tilte: "t3".tr,
          subTitle:"b3".tr,
          image: AppImageAsset.onbordingimagethree,
        )
      ],
    );
  }
}
