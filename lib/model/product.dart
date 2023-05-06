import 'package:fruit_market/core/utils/constant/imageasset.dart';
import 'package:get/get.dart';

class Product {
  final int id, price;
  final String title, subtitle, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.image});
}

List<Product> product = [
  Product(
    id: 1,
    price: 299,
    title: "title1".tr,
    subtitle: "subtitle1".tr,
    description: "des".tr,
    image: AppImageAsset.airpod,
  ),
  Product(
      id: 2,
      price: 2000,
      title: "title2".tr,
      subtitle: "subtitle2".tr,
      image: AppImageAsset.mobile,
      description: "des".tr),
  Product(
      id: 3,
      price: 59,
      title: "title3".tr,
      subtitle: "subtitle3".tr,
      image: AppImageAsset.classs,
      description: "des".tr),
  Product(
      id: 4,
      price: 199,
      title: "title4".tr,
      subtitle: "subtitle4".tr,
      image: AppImageAsset.headset,
      description: "des".tr),
  Product(
      id: 5,
      price: 999,
      title: "title5".tr,
      subtitle: "subtitle5".tr,
      image: AppImageAsset.speaker,
      description: "des".tr),
  Product(
      id: 6,
      price: 1999,
      title: "title6".tr,
      subtitle: "subtitle6".tr,
      image: AppImageAsset.camera,
      description: "des".tr),
];
