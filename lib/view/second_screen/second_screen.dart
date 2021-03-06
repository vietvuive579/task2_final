import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2_final/controller/dropdownbtn_controller.dart';
import 'package:task2_final/controller/infomation_controller.dart';
import 'package:task2_final/view/infomation_screen/infomation_screen.dart';
import 'package:task2_final/view/second_screen/components/dropdownbutton.dart';
import 'package:task2_final/view/second_screen/components/input_context_string.dart';
import 'package:task2_final/view/second_screen/components/widget.dart';

class theSecondScreen extends StatefulWidget {
  const theSecondScreen({Key? key}) : super(key: key);

  @override
  State<theSecondScreen> createState() => _theSecondScreenState();
}

class _theSecondScreenState extends State<theSecondScreen> {
  bool checkvalue = false;
  final dropdownbtn = Get.put(Dropdownbtn_tpho());
  InformationController informationcontroller =
      Get.put(InformationController());

  late TextEditingController soTienController,
      tgVayController,
      nameController,
      emailController,
      sdtController;

  @override
  void initState() {
    super.initState();
    soTienController = TextEditingController();
    tgVayController = TextEditingController();
    nameController = TextEditingController();
    emailController = TextEditingController();
    sdtController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.blue[900],
          ),
          title: Text(INFORMATION_INPUT,
              style: TextStyle(color: Colors.blue[900])),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(12, 16, 12, 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const inputContext1(inputText: 'Th??ng tin kho???n vay'),
                const SizedBox(height: 20),
                const inputContext2(inputText: 'Nh???p s??? ti???n'),
                const SizedBox(height: 10),
                inputWidget(
                    hintText: soTien_INPUT,
                    controller: soTienController,
                    keyboardType: TextInputType.number),
                const SizedBox(height: 15),
                const inputContext2(inputText: 'Th???i gian vay (n??m)'),
                const SizedBox(height: 10),
                inputWidget(
                    hintText: tgVay_INPUT,
                    controller: tgVayController,
                    keyboardType: TextInputType.number),
                const SizedBox(height: 20),
                const inputContext1(inputText: 'Th??ng tin li??n h???'),
                const SizedBox(height: 15),
                const inputContext2(inputText: 'D???ch v??? ????ng k??'),
                const SizedBox(height: 10),
                ttNganHang(),
                const SizedBox(height: 10),
                Ten_GioiTinh(),
                const SizedBox(height: 10),
                const inputContext2(inputText: 'Email'),
                const SizedBox(height: 10),
                inputWidget(
                    hintText: EMAIL_INPUT,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress),
                const SizedBox(height: 10),
                const inputContext2(inputText: 'S??? ??i???n tho???i'),
                const SizedBox(height: 10),
                inputWidget(
                    hintText: SDT_INPUT,
                    controller: sdtController,
                    keyboardType: TextInputType.number),
                const SizedBox(height: 10),
                const inputContext2(inputText: 'T???nh/Th??nh ph???'),
                const SizedBox(height: 10),
                DropdownBtn_tpho(),
                const SizedBox(height: 10),
                const inputContext2(inputText: 'Qu???n/Huy???n'),
                const SizedBox(height: 10),
                //dropdownBtn(tphovalue),
                DropdownBtn_quanhuyen(),
                //check box
                const SizedBox(height: 10),
                xacNhan(),
                //button
                const SizedBox(height: 10),
                guiTTbtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding ttNganHang() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              //spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            const Expanded(
              flex: 1,
              child: Image(image: AssetImage("assets/logos/mb.png")),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 15),
                    child: Text(
                      "Ng??n h??ng qu??n ?????i Vi???t Nam",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //SizedBox(height: 35),
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 25),
                    child: Text(
                      "vay mua nh??",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row Ten_GioiTinh() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const inputContext2(inputText: 'H??? v?? t??n'),
              const SizedBox(height: 10),
              inputWidget(
                  hintText: NAME_INPUT,
                  controller: nameController,
                  keyboardType: TextInputType.name),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const inputContext2(inputText: 'Gi???i t??nh'),
              const SizedBox(height: 10),
              DropdownBtn_gioitinh(),
            ],
          ),
        ),
      ],
    );
  }

  Center guiTTbtn() {
    return Center(
      child: buttonWidget(
        lable: CONFIRM,
        colorButton: Colors.orange,
        colorText: Colors.white,
        onPress: () {
          informationcontroller.updateInformation(
            soTien: soTienController.text,
            tgVay: tgVayController.text,
            name: nameController.text,
            email: emailController.text,
            sdthoai: sdtController.text,
            gioiTinh: information.getGioiTinh(),
            quanHuyen: information.getQuanHuyen(),
            thanhPho: information.getThanhPho(),
          );

          // Routing to Information Page
          Get.to(InformationScreen());
        },
      ),
    );
  }

  Row xacNhan() {
    return Row(
      children: <Widget>[
        //data: ThemeData(unselectedWidgetColor: Colors.black),
        Checkbox(
          checkColor: Colors.green,
          //activeColor: Colors.red,
          value: checkvalue,
          onChanged: (bool? value) {
            setState(() {
              checkvalue = value!;
            });
          },
        ),
        const Flexible(
          child: Padding(
            padding: EdgeInsets.only(right: 4.0),
            child: Text(
              'T??i ?????ng ?? cung c???p th??ng tin ????? s??? d???ng d???ch v??? trong qu?? tr??nh t?? v???n',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
