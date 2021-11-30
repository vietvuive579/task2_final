import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2_final/model/infomation.dart';

class InformationController extends GetxController {
  late Information information;

  String getSoTien() {
    return information.gioiTinh;
  }

  String getTgVay() {
    return information.gioiTinh;
  }

  String getName() {
    return information.gioiTinh;
  }

  String getEmail() {
    return information.gioiTinh;
  }

  String getSdt() {
    return information.gioiTinh;
  }

  String getGioiTinh() {
    return information.gioiTinh;
  }

  String getThanhPho() {
    return information.thanhPho;
  }

  String getQuanHuyen() {
    return information.quanHuyen;
  }

  void updateInformation({
    @required soTien,
    @required tgVay,
    @required name,
    @required email,
    @required sdthoai,
    @required gioiTinh,
    @required thanhPho,
    @required quanHuyen,
  }) {
    information.soTien = soTien;
    information.tgVay = tgVay;
    information.name = name;
    information.email = email;
    information.sdthoai = sdthoai;
    information.gioiTinh = gioiTinh;
    information.thanhPho = thanhPho;
    information.quanHuyen = quanHuyen;
    update();
  }

  void updateGioiTinh(String newValue) {
    information.gioiTinh = newValue;
    update();
  }

  void updateThanhPho(String newValue) {
    information.thanhPho = newValue;
    update();
  }

  void updateQuanHuyen(String newValue) {
    information.quanHuyen = newValue;
    update();
  }
}
