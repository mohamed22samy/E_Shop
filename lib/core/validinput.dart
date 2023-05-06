import 'package:get/get.dart';

validinput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "18".tr;
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "19".tr;
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "20".tr;
    }
  }

  if (val.isEmpty) {
    return "21".tr;
  }

  if (val.length < min) {
    return "22".tr;
  }
  if (val.length > max) {
    return "23".tr;
  }
}
