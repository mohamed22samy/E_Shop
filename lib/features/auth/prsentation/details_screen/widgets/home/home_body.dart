import 'package:flutter/material.dart';
import 'package:fruit_market/features/auth/prsentation/details_screen/widgets/home/product_card.dart';


import '../../../../../../core/utils/constant/color.dart';
import '../../../../../../model/product.dart';
import '../../details_screen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        //عشان ميطلعش من الحواف
        child: Column(
      children: [
        const SizedBox(
          height: AppPading.kDefaultpading / 2,
        ),
        Expanded(
            //عشان يفصل كل اكسباند عن بعض
            child: Stack(
          //استاك عشان هحط اكتر من عنصر فوق بعض
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70.0),
              decoration: const BoxDecoration(
                  color: Appcolor.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: product.length,
              itemBuilder: (context, index) => ProductCard(
                itemIndex: index,
                product: product[index],
                onTap: () {
                 // Get.toNamed(AppRoute.detailsScreen);
                   Navigator.push(
                   context,
                   MaterialPageRoute(
                    builder: (context) =>  DetailsScreen(product: product[index],)));
                },
              ),
            )
          ],
        ))
      ],
    ));
  }
}
