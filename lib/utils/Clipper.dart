import 'package:flutter/material.dart';

class CustomClipperProductDetails extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 70);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width, size.height - 100);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy + 100,
        firstPoint.dx, firstPoint.dy);

    // var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    // var secondPoint = Offset(size.width, size.height - 30);
    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
