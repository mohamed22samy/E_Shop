import 'package:flutter/material.dart';
import 'package:fruit_market/features/auth/prsentation/details_screen/widgets/details/product_image.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/constant/color.dart';
import '../../../../../../model/product.dart';
import 'color_dot.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //عشان الشاشه تظبط علي كل التلفونات
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.kDefaultpading * 1.2),
          decoration: const BoxDecoration(
              color: Appcolor.backgroundcolor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(child: ProductImage(size: size, image: product.image)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppPading.kDefaultpading),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ColorDot(fillcolor: Appcolor.text, isSelected: true),
                  ColorDot(fillcolor: Appcolor.primaryColor, isSelected: false),
                  ColorDot(fillcolor: Appcolor.socundColor, isSelected: false),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppPading.kDefaultpading / 2),
              child: Text(
                product.title.tr,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Row(children: [
              Text(
                "price".tr,
                style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.socundColor),
              ),
              Text(
                ":",
                style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.socundColor),
              ),
              Text(
                " \$ ${product.price}",
                style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.socundColor),
              ),
            ]),
            const SizedBox(
              height: AppPading.kDefaultpading / 2,
            )
          ]),
        ),
        Container(
            margin: const EdgeInsets.symmetric(
                vertical: AppPading.kDefaultpading / 2),
            padding: const EdgeInsets.symmetric(
                horizontal: AppPading.kDefaultpading * 1.5,
                vertical: AppPading.kDefaultpading / 2),
            child: Text(
              product.description.tr,
              style: const TextStyle(color: Appcolor.white, fontSize: 16),
            ))
      ],
    );
  }
}
