import 'package:flutter/material.dart';

class Triangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Triangle'),
        ClipPath(
          clipper: TriangleClipper(),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.amber,
          ),
        )
      ],
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
