import 'package:flutter/material.dart';
import 'package:layout_practice/constant.dart';

class Sv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(child: container('Monkey D Luffy', luffyIcon)),
          const Divider(),
          Container(child: container('Monkey D Rufy', aceIcon)),
        ],
      ),
    );
  }
}

Widget container(String label, Image image) {
  return Container(
    width: double.infinity,
    height: 300.0,
    decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image,
        const SizedBox(height: 10.0),
        Text(
          label,
          style: nameTextStyle,
        ),
      ],
    ),
  );
}
