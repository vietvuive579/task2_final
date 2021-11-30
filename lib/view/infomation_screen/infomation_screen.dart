import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2_final/controller/infomation_controller.dart';
import 'package:task2_final/model/infomation.dart';
import 'package:task2_final/view/infomation_screen/components/widget.dart';

class InformationScreen extends StatefulWidget {
  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  InformationController information = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Thông tin"),
          centerTitle: true,
        ),
        body: GetBuilder<InformationController>(
          builder: (information) {
            return Container(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  informationWidget(
                      label: "Số tiền", content: information.getSoTien()),
                  Divider(),
                  informationWidget(
                      label: "Thời gian vay", content: information.getTgVay()),
                  Divider(),
                  informationWidget(
                      label: "Họ và tên", content: information.getName()),
                  Divider(),
                  informationWidget(
                      label: "Email", content: information.getName()),
                  Divider(),
                  informationWidget(
                      label: "Số điện thoại", content: information.getSdt()),
                  Divider(),
                  informationWidget(
                      label: "Giới tính", content: information.getGioiTinh()),
                  Divider(),
                  informationWidget(
                      label: "Thành Phố", content: information.getThanhPho()),
                  Divider(),
                  informationWidget(
                      label: "Quận Huyện", content: information.getQuanHuyen()),
                  Divider(),
                ],
              ),
            );
          },
        ));
  }
}
