import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var s = 0.4.w;
    var loc = 0.3.w;
    var path = Path()
      ..moveTo(size.width * 0.2, size.height * 0.45)
      ..lineTo(0.25 * size.width, size.height * 0.45)
      ..cubicTo(
        (loc + s * 0.20) * size.width,
        size.height * 0.45,
        loc * size.width,
        size.height * 0.55,
        (loc + s * 0.50) * size.width,
        size.height * 0.55,
      )
      ..cubicTo(
        (loc + s) * size.width,
        size.height * 0.55,
        (loc + s - s * 0.20) * size.width,
        size.height * 0.45,
        (loc + s + 0.1) * size.width,
        size.height * 0.45,
      )
      ..lineTo(size.width * 0.90, size.height * 0.45)
      ..quadraticBezierTo(
          size.width * 0.99, size.height * 0.45, size.width, size.height * 0.5)
      ..lineTo(size.width, size.height * 0.95)
      ..quadraticBezierTo(
          size.width, size.height, size.width * 0.90, size.height)
      ..lineTo(size.width * 0.1, size.height)
      ..quadraticBezierTo(size.width * 0.01, size.height, 0, size.height * 0.95)
      ..lineTo(0, size.height * 0.5)
      ..quadraticBezierTo(
          0, size.height * 0.5, size.width * 0.05, size.height * 0.45)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
