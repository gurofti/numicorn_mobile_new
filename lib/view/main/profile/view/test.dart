import 'package:flutter/cupertino.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xffd3d3d3);
    path = Path();
    path.lineTo(size.width * 0.76, size.height * 1.43);
    path.cubicTo(size.width * 0.76, size.height * 1.43, size.width * 0.77,
        size.height * 1.51, size.width * 0.76, size.height * 1.54);
    path.cubicTo(size.width * 0.75, size.height * 1.57, size.width * 0.67,
        size.height * 1.64, size.width / 2, size.height * 1.64);
    path.cubicTo(size.width / 2, size.height * 1.64, size.width / 2,
        size.height * 1.64, size.width / 2, size.height * 1.64);
    path.cubicTo(size.width / 3, size.height * 1.64, size.width / 4,
        size.height * 1.57, size.width * 0.24, size.height * 1.54);
    path.cubicTo(size.width * 0.23, size.height * 1.51, size.width * 0.24,
        size.height * 1.43, size.width * 0.24, size.height * 1.43);
    path.cubicTo(size.width * 0.24, size.height * 1.43, size.width * 0.76,
        size.height * 1.43, size.width * 0.76, size.height * 1.43);
    path.cubicTo(size.width * 0.76, size.height * 1.43, size.width * 0.76,
        size.height * 1.43, size.width * 0.76, size.height * 1.43);
    canvas.drawPath(path, paint);

    // Path number 2

    paint.color = Color(0xffa0a0a0);
    path = Path();
    path.lineTo(size.width * 0.74, size.height * 1.47);
    path.cubicTo(size.width * 0.74, size.height * 1.47, size.width * 0.74,
        size.height * 1.52, size.width * 0.74, size.height * 1.54);
    path.cubicTo(size.width * 0.73, size.height * 1.57, size.width * 0.66,
        size.height * 1.6, size.width * 0.59, size.height * 1.61);
    path.cubicTo(size.width * 0.59, size.height * 1.61, size.width * 0.65,
        size.height * 1.55, size.width / 2, size.height * 1.55);
    path.cubicTo(size.width / 2, size.height * 1.55, size.width / 2,
        size.height * 1.55, size.width / 2, size.height * 1.55);
    path.cubicTo(size.width * 0.35, size.height * 1.55, size.width * 0.41,
        size.height * 1.61, size.width * 0.41, size.height * 1.61);
    path.cubicTo(size.width * 0.34, size.height * 1.6, size.width * 0.27,
        size.height * 1.57, size.width * 0.26, size.height * 1.54);
    path.cubicTo(size.width * 0.26, size.height * 1.52, size.width * 0.26,
        size.height * 1.47, size.width * 0.26, size.height * 1.47);
    path.cubicTo(size.width * 0.26, size.height * 1.47, size.width * 0.74,
        size.height * 1.47, size.width * 0.74, size.height * 1.47);
    path.cubicTo(size.width * 0.74, size.height * 1.47, size.width * 0.74,
        size.height * 1.47, size.width * 0.74, size.height * 1.47);
    canvas.drawPath(path, paint);

    // Path number 3

    paint.color = Color(0xffd3d3d3);
    path = Path();
    path.lineTo(size.width * 0.63, size.height * 0.53);
    path.cubicTo(size.width * 0.63, size.height * 0.53, size.width * 0.94,
        size.height * 0.79, size.width, size.height * 1.06);
    path.cubicTo(size.width * 1.04, size.height * 1.33, size.width * 0.85,
        size.height * 1.53, size.width / 2, size.height * 1.53);
    path.cubicTo(size.width / 2, size.height * 1.53, size.width / 2,
        size.height * 1.53, size.width / 2, size.height * 1.53);
    path.cubicTo(size.width * 0.15, size.height * 1.53, -0.04,
        size.height * 1.33, size.width * 0.01, size.height * 1.06);
    path.cubicTo(size.width * 0.06, size.height * 0.79, size.width * 0.37,
        size.height * 0.53, size.width * 0.37, size.height * 0.53);
    path.cubicTo(size.width * 0.37, size.height * 0.53, size.width * 0.63,
        size.height * 0.53, size.width * 0.63, size.height * 0.53);
    path.cubicTo(size.width * 0.63, size.height * 0.53, size.width * 0.63,
        size.height * 0.53, size.width * 0.63, size.height * 0.53);
    canvas.drawPath(path, paint);

    // Path number 4

    paint.color = Color(0xffa0a0a0);
    path = Path();
    path.lineTo(size.width * 0.92, size.height * 1.27);
    path.cubicTo(size.width * 0.92, size.height * 1.4, size.width * 0.74,
        size.height * 1.5, size.width / 2, size.height * 1.5);
    path.cubicTo(size.width * 0.27, size.height * 1.5, size.width * 0.08,
        size.height * 1.4, size.width * 0.08, size.height * 1.27);
    path.cubicTo(size.width * 0.08, size.height * 1.14, size.width * 0.27,
        size.height * 1.25, size.width / 2, size.height * 1.25);
    path.cubicTo(size.width * 0.73, size.height * 1.25, size.width * 0.92,
        size.height * 1.14, size.width * 0.92, size.height * 1.27);
    path.cubicTo(size.width * 0.92, size.height * 1.27, size.width * 0.92,
        size.height * 1.27, size.width * 0.92, size.height * 1.27);
    canvas.drawPath(path, paint);

    // Path number 5

    paint.color = Color(0xff8473f1);
    path = Path();
    path.lineTo(size.width * 0.89, size.height * 1.31);
    path.cubicTo(size.width * 0.9, size.height * 1.29, size.width * 0.91,
        size.height * 1.28, size.width * 0.92, size.height * 1.26);
    path.cubicTo(size.width * 0.91, size.height * 1.15, size.width * 0.72,
        size.height * 1.25, size.width / 2, size.height * 1.25);
    path.cubicTo(size.width * 0.28, size.height * 1.25, size.width * 0.09,
        size.height * 1.14, size.width * 0.08, size.height * 1.26);
    path.cubicTo(size.width * 0.09, size.height * 1.28, size.width * 0.1,
        size.height * 1.3, size.width * 0.11, size.height * 1.31);
    path.cubicTo(size.width * 0.18, size.height * 1.41, size.width * 0.32,
        size.height * 1.47, size.width / 2, size.height * 1.47);
    path.cubicTo(size.width * 0.68, size.height * 1.47, size.width * 0.82,
        size.height * 1.41, size.width * 0.89, size.height * 1.31);
    path.cubicTo(size.width * 0.89, size.height * 1.31, size.width * 0.89,
        size.height * 1.31, size.width * 0.89, size.height * 1.31);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
