import 'package:flutter/material.dart';
import 'package:fruit_market/features/auth/prsentation/details_screen/widgets/details/details_body.dart';
import 'package:get/get.dart';

import '../../../../core/utils/constant/color.dart';
import '../../../../model/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.primaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Appcolor.backgroundcolor,
      leading: IconButton(
          padding: const EdgeInsets.only(right: AppPading.kDefaultpading),
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Appcolor.primaryColor,
          )),
      title: Text(
        "رجوع",
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
