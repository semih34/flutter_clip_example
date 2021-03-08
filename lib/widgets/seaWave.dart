import 'package:flutter/material.dart';

class SeeWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('See Wave'),
        ClipPath(
          clipper: SeeWaveClipper(),
          child: Container(
            width: double.infinity,
            height: 300,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}

class SeeWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 60, size.width / 2, size.height - 30);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
