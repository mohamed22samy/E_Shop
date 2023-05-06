import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constant/color.dart';
import 'package:fruit_market/features/onboarding/widgets/onboarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Appcolor.backgroundcolor,
      body: OnBoardingBody(),
    );
  }
}
