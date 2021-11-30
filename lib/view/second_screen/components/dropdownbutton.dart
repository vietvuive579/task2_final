import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2_final/controller/dropdownbtn_controller.dart';
import 'package:task2_final/controller/infomation_controller.dart';

InformationController information = Get.put(InformationController());

class DropdownBtn_tpho extends StatelessWidget {
  const DropdownBtn_tpho({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      //alignment: Alignment.centerLeft,
      //decoration: kBoxDecorationStyle,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey,
          style: BorderStyle.solid,
        ),
      ),
      child: GetBuilder<Dropdownbtn_tpho>(
        builder: (dropdownbtn) => DropdownButton<String>(
          icon: const Icon(Icons.arrow_drop_down),
          isExpanded: true,
          underline: const SizedBox(),
          //borderRadius: BorderRadius.circular(20),
          value: dropdownbtn.value,
          onChanged: (newValue) {
            dropdownbtn.onSelected(newValue!);
            information.updateThanhPho(newValue);
          },
          items: dropdownbtn.periodList
              .map<DropdownMenuItem<String>>((String data) {
            return DropdownMenuItem<String>(
              value: data,
              child: Text(data),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class DropdownBtn_quanhuyen extends StatefulWidget {
  const DropdownBtn_quanhuyen({
    Key? key,
  }) : super(key: key);

  @override
  State<DropdownBtn_quanhuyen> createState() => _DropdownBtn_quanhuyenState();
}

class _DropdownBtn_quanhuyenState extends State<DropdownBtn_quanhuyen> {
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      //alignment: Alignment.centerLeft,
      //decoration: kBoxDecorationStyle,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey,
          style: BorderStyle.solid,
        ),
      ),
      child: DropdownButton<String>(
        icon: const Icon(Icons.arrow_drop_down),
        isExpanded: true,
        underline: const SizedBox(),
        //borderRadius: BorderRadius.circular(20),
        value: dropdownValue,
        onChanged: (newValue) {
          information.updateQuanHuyen(newValue!);
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "Quận 7",
          "Quận Bình Thạnh",
          "Quận 5",
          "Quận 10",
          "Quận 11"
        ].map<DropdownMenuItem<String>>((String data) {
          return DropdownMenuItem<String>(
            value: data,
            child: Text(data),
          );
        }).toList(),
      ),
    );
  }
}

class DropdownBtn_gioitinh extends StatefulWidget {
  //final ValueChanged<String> onChanged;
  //var dropdownValue;
  DropdownBtn_gioitinh({
    Key? key,
    //required this.dropdownValue,
  }) : super(key: key);

  @override
  State<DropdownBtn_gioitinh> createState() => _DropdownBtn_gioitinhState();
}

class _DropdownBtn_gioitinhState extends State<DropdownBtn_gioitinh> {
  var dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      //alignment: Alignment.centerLeft,
      //decoration: kBoxDecorationStyle,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey,
          style: BorderStyle.solid,
        ),
      ),
      child: DropdownButton<String>(
        icon: const Icon(Icons.arrow_drop_down),
        isExpanded: true,
        underline: const SizedBox(),
        //borderRadius: BorderRadius.circular(20),
        value: dropdownValue,
        onChanged: (newValue) {
          information.updateGioiTinh(newValue!);
          setState(() {
            dropdownValue = newValue;
          });
        },
        items:
            <String>['Nam', 'Nữ'].map<DropdownMenuItem<String>>((String data) {
          return DropdownMenuItem<String>(
            value: data,
            child: Text(data),
          );
        }).toList(),
      ),
    );
  }
}
