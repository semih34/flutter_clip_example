import 'package:flutter/material.dart';

class MountainDescent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Mountain Descent'),
        ClipPath(
          clipper: MountainDescentClipper(),
          child: Container(
            color: Colors.blueGrey,
            height: 200,
            width: double.infinity,
          ),
        )
      ],
    );
  }
}

class MountainDescentClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
