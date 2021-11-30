import 'package:flutter/material.dart';

Widget informationWidget({@required label, @required content}) {
  return Container(
    padding: const EdgeInsets.all(12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(flex: 1, child: Text(label)),
        Expanded(flex: 1, child: Text(content))
      ],
    ),
  );
}
