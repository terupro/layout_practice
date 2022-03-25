import 'package:flutter/material.dart';
import 'package:layout_practice/constant.dart';

class Lv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: luffyIcon,
                title: const Text('Monkey D Luffy', style: nameTextStyle),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                leading: aceIcon,
                title: const Text('Portgas D Ace', style: nameTextStyle),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ),
        ],
      );
    });
  }
}
