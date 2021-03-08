import 'package:flutter/material.dart';

class CustomRadius extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Custom Radius'),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
