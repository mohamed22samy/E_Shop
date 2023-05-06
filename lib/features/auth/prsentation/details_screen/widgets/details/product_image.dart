import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/constant/color.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.size, required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppPading.kDefaultpading),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
                color: Appcolor.backgroundcolor, shape: BoxShape.circle),
          ),
          Image.asset(
           image,
            fit: BoxFit.cover,
            height: size.width * 0.75,
            width: size.width * 0.75,
          )
        ],
      ),
    );
  }
}
