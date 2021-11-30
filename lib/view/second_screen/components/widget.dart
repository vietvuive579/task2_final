import 'package:flutter/material.dart';
import 'package:task2_final/view/second_screen/components/fontstyle.dart';

Widget inputWidget(
    {@required hintText, @required controller, required keyboardType}) {
  return Container(
    margin: const EdgeInsets.only(left: 12, right: 12),
    height: 30,
    child: TextField(
      keyboardType: keyboardType,
      style: TextStyle(
        color: Colors.blue[900],
      ),
      decoration: InputDecoration(
        //border:
        contentPadding: const EdgeInsets.only(left: 12, top: 12),
        //labelText: label,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        //fillColor: Colors.blue.shade900,
      ),
      controller: controller,
    ),
  );
}

Widget buttonWidget(
    {@required lable,
    @required colorButton,
    @required colorText,
    @required onPress}) {
  return GestureDetector(
    child: Container(
      height: 37,
      width: 170,
      decoration: BoxDecoration(
        color: colorButton,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          lable,
          style: TextStyle(color: colorText, fontSize: 20),
        ),
      ),
    ),
    onTap: onPress,
  );
}

class inputContext1 extends StatelessWidget {
  final String inputText;

  const inputContext1({Key? key, required this.inputText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 6),
      child: Text(
        inputText,
        style: h1fontStyle,
      ),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.blue.shade900,
            width: 5,
          ),
        ),
      ),
    );
  }
}

class inputContext2 extends StatelessWidget {
  final String inputText;

  const inputContext2({Key? key, required this.inputText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12),
      child: Text(
        inputText,
        style: h2fontStyle,
      ),
    );
  }
}
