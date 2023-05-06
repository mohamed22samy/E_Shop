import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constant/color.dart';
import 'package:fruit_market/features/auth/prsentation/pages/complete_information/widgets/complete_information_body.dart';

class CompleteInfomationView extends StatelessWidget {
  const CompleteInfomationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.backgroundcolor,
      body: CompleteInfomationBody(),
    );
  }
}
