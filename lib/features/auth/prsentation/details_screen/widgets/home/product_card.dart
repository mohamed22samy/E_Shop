import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/constant/color.dart';
import '../../../../../../model/product.dart';

class ProductCard extends StatelessWidget {
  final int itemIndex;
  final Product product;
  final void Function() onTap;
  const ProductCard({
    super.key,
    required this.itemIndex,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: AppPading.kDefaultpading,
          vertical: AppPading.kDefaultpading / 2),
      height: 190.0,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Appcolor.backgroundcolor,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Appcolor.shadow)
                ],
              ),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppPading.kDefaultpading),
                  height: 160.0,
                  width: 200.0,
                  child: Image.asset(product.image, fit: BoxFit.cover),
                )),
            Positioned(
                bottom: 10.0,
                right: 0.0,
                child: SizedBox(
                  height: 135.0,
                  width: size.width -
                      200, //عشان الصوره الي حطينها الويدز بتاعها 200
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(flex: 2),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppPading.kDefaultpading),
                            child: Text(
                              product.title.tr,
                              style: Theme.of(context).textTheme.bodyText1,
                            )),
                        const Spacer(
                          flex: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPading.kDefaultpading),
                          child: Text(
                            product.subtitle.tr,
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ),
                        const Spacer(flex: 20),
                        Padding(
                          padding: const EdgeInsets.all(
                              AppPading.kDefaultpading / 1.1),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppPading.kDefaultpading / 4,
                                vertical: AppPading.kDefaultpading / 5),
                            decoration: BoxDecoration(
                                color: Appcolor.primaryColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Row(
                              children: [
                                Text("price".tr,
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                                Text(":",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                                Text(
                                  " \$ ${product.price}",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}
