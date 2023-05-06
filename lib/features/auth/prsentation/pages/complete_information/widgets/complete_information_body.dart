import 'package:flutter/material.dart';
import 'package:fruit_market/core/rout.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';
import 'package:fruit_market/features/auth/prsentation/pages/complete_information/widgets/complete_infomation_items.dart';
import 'package:get/get.dart';

class CompleteInfomationBody extends StatelessWidget {
  const CompleteInfomationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            VirtecalSpace(SizeConfig.defaultSize! * 1.2),
            const CompleteInfoItem(text: "Enter your name"),
            VirtecalSpace(SizeConfig.defaultSize! * 0.25),
            const CompleteInfoItem(
                text: "Enter your phone number",
                inputType: TextInputType.number),
            VirtecalSpace(SizeConfig.defaultSize! * 0.25),
            const CompleteInfoItem(maxLines: 5, text: "Enter your address"),
            VirtecalSpace(SizeConfig.defaultSize! * 0.6),
            CustomGeneralButton(
              onTap: () {
                Get.offAllNamed(AppRoute.signUpView);
              },
              text: "Login",
            )
          ],
        ),
      ),
    );
  }
}
