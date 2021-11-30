import 'package:get/get.dart';

class Dropdownbtn_tpho extends GetxController {
  List<String> periodList = [
    "Thành phố Hồ Chí Minh",
    "Thành phố Đà Nẵng",
    "Thành phố Đông Hà",
    "Thành phố Hải Phòng"
  ];
  String? value = "";
  void onSelected(String checkvalue) {
    value = checkvalue;
    update();
  }
}
