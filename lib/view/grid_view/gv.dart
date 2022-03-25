import 'package:flutter/material.dart';
import 'package:layout_practice/constant.dart';

class Gv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          if (index >= list.length) {
            list.addAll([
              luffyIcon,
              aceIcon,
            ]);
          }
          return list[index];
        });
  }
}
