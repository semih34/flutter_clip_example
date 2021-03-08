import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Square',
          style: TextStyle(fontSize: 20),
        ),
        ClipRect(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
