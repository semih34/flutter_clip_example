import 'package:flutter/material.dart';

class Oval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Oval'),
        ClipOval(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.pink,
          ),
        ),
      ],
    );
  }
}
