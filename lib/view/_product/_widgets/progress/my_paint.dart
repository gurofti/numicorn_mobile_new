import 'package:flutter/material.dart';

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

    paint.color = Color(0xffffffff).withOpacity(0);
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

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.37, size.height * 0.53);
    path.cubicTo(size.width * 0.37, size.height * 0.53, size.width * 0.37,
        size.height * 0.54, size.width * 0.36, size.height * 0.55);
    path.cubicTo(size.width * 0.38, size.height * 0.57, size.width * 0.43,
        size.height * 0.6, size.width / 2, size.height * 0.6);
    path.cubicTo(size.width * 0.57, size.height * 0.6, size.width * 0.62,
        size.height * 0.57, size.width * 0.64, size.height * 0.55);
    path.cubicTo(size.width * 0.63, size.height * 0.54, size.width * 0.63,
        size.height * 0.53, size.width * 0.63, size.height * 0.53);
    path.cubicTo(size.width * 0.63, size.height * 0.53, size.width * 0.37,
        size.height * 0.53, size.width * 0.37, size.height * 0.53);
    path.cubicTo(size.width * 0.37, size.height * 0.53, size.width * 0.37,
        size.height * 0.53, size.width * 0.37, size.height * 0.53);
    canvas.drawPath(path, paint);

    // Path number 5

    paint.color = Color(0xffffffff).withOpacity(0);
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

    // Path number 6

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.31, size.height * 0.23);
    path.cubicTo(size.width * 0.31, size.height * 0.23, size.width * 0.31,
        size.height * 0.37, size.width * 0.31, size.height * 0.37);
    path.cubicTo(size.width * 0.31, size.height * 0.4, size.width * 0.39,
        size.height * 0.44, size.width / 2, size.height * 0.44);
    path.cubicTo(size.width * 0.61, size.height * 0.44, size.width * 0.69,
        size.height * 0.4, size.width * 0.69, size.height * 0.37);
    path.cubicTo(size.width * 0.69, size.height * 0.37, size.width * 0.69,
        size.height * 0.23, size.width * 0.69, size.height * 0.23);
    path.cubicTo(size.width * 0.69, size.height * 0.23, size.width * 0.31,
        size.height * 0.23, size.width * 0.31, size.height * 0.23);
    path.cubicTo(size.width * 0.31, size.height * 0.23, size.width * 0.31,
        size.height * 0.23, size.width * 0.31, size.height * 0.23);
    canvas.drawPath(path, paint);

    // Path number 7

    paint.color = Color(0xff8473f1);
    path = Path();
    path.lineTo(size.width * 0.69, size.height * 0.23);
    path.cubicTo(size.width * 0.69, size.height * 0.26, size.width * 0.61,
        size.height * 0.29, size.width / 2, size.height * 0.29);
    path.cubicTo(size.width * 0.39, size.height * 0.29, size.width * 0.31,
        size.height * 0.26, size.width * 0.31, size.height * 0.23);
    path.cubicTo(size.width * 0.31, size.height / 5, size.width * 0.39,
        size.height * 0.18, size.width / 2, size.height * 0.18);
    path.cubicTo(size.width * 0.61, size.height * 0.18, size.width * 0.69,
        size.height / 5, size.width * 0.69, size.height * 0.23);
    path.cubicTo(size.width * 0.69, size.height * 0.23, size.width * 0.69,
        size.height * 0.23, size.width * 0.69, size.height * 0.23);
    canvas.drawPath(path, paint);

    // Path number 8

    paint.color = Color(0xff312b77);
    path = Path();
    path.lineTo(size.width * 0.66, size.height / 5);
    path.cubicTo(size.width * 0.63, size.height * 0.19, size.width * 0.57,
        size.height * 0.18, size.width / 2, size.height * 0.18);
    path.cubicTo(size.width * 0.43, size.height * 0.18, size.width * 0.37,
        size.height * 0.19, size.width * 0.34, size.height / 5);
    path.cubicTo(size.width * 0.34, size.height / 5, size.width * 0.38,
        size.height * 0.23, size.width * 0.38, size.height * 0.23);
    path.cubicTo(size.width * 0.38, size.height * 0.23, size.width * 0.62,
        size.height * 0.23, size.width * 0.62, size.height * 0.23);
    path.cubicTo(size.width * 0.62, size.height * 0.23, size.width * 0.66,
        size.height / 5, size.width * 0.66, size.height / 5);
    path.cubicTo(size.width * 0.66, size.height / 5, size.width * 0.66,
        size.height / 5, size.width * 0.66, size.height / 5);
    canvas.drawPath(path, paint);

    // Path number 9

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width / 2, size.height * 0.57);
    path.cubicTo(size.width * 0.61, size.height * 0.57, size.width * 0.66,
        size.height * 0.53, size.width * 0.66, size.height * 0.53);
    path.cubicTo(size.width * 0.66, size.height * 0.53, size.width * 0.67,
        size.height * 0.52, size.width * 0.67, size.height / 2);
    path.cubicTo(size.width * 0.67, size.height * 0.48, size.width * 0.66,
        size.height * 0.47, size.width * 0.66, size.height * 0.47);
    path.cubicTo(size.width * 0.66, size.height * 0.47, size.width * 0.58,
        size.height / 2, size.width / 2, size.height / 2);
    path.cubicTo(size.width * 0.42, size.height / 2, size.width * 0.34,
        size.height * 0.47, size.width * 0.34, size.height * 0.47);
    path.cubicTo(size.width * 0.34, size.height * 0.47, size.width / 3,
        size.height * 0.48, size.width / 3, size.height / 2);
    path.cubicTo(size.width / 3, size.height * 0.52, size.width * 0.34,
        size.height * 0.53, size.width * 0.34, size.height * 0.53);
    path.cubicTo(size.width * 0.34, size.height * 0.53, size.width * 0.39,
        size.height * 0.57, size.width / 2, size.height * 0.57);
    path.cubicTo(size.width / 2, size.height * 0.57, size.width / 2,
        size.height * 0.57, size.width / 2, size.height * 0.57);
    canvas.drawPath(path, paint);

    // Path number 10

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width / 2, size.height / 2);
    path.cubicTo(size.width * 0.42, size.height / 2, size.width * 0.34,
        size.height * 0.47, size.width * 0.34, size.height * 0.47);
    path.cubicTo(size.width * 0.34, size.height * 0.47, size.width * 0.34,
        size.height * 0.47, size.width * 0.34, size.height * 0.47);
    path.cubicTo(size.width * 0.35, size.height * 0.49, size.width * 0.39,
        size.height * 0.54, size.width / 2, size.height * 0.54);
    path.cubicTo(size.width * 0.59, size.height * 0.54, size.width * 0.64,
        size.height / 2, size.width * 0.66, size.height * 0.48);
    path.cubicTo(size.width * 0.66, size.height * 0.47, size.width * 0.66,
        size.height * 0.47, size.width * 0.66, size.height * 0.47);
    path.cubicTo(size.width * 0.66, size.height * 0.47, size.width * 0.58,
        size.height / 2, size.width / 2, size.height / 2);
    path.cubicTo(size.width / 2, size.height / 2, size.width / 2,
        size.height / 2, size.width / 2, size.height / 2);
    canvas.drawPath(path, paint);

    // Path number 11

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width / 2, size.height * 0.51);
    path.cubicTo(size.width * 0.61, size.height * 0.51, size.width * 0.66,
        size.height * 0.47, size.width * 0.66, size.height * 0.47);
    path.cubicTo(size.width * 0.66, size.height * 0.47, size.width * 0.67,
        size.height * 0.46, size.width * 0.67, size.height * 0.44);
    path.cubicTo(size.width * 0.67, size.height * 0.42, size.width * 0.66,
        size.height * 0.41, size.width * 0.66, size.height * 0.41);
    path.cubicTo(size.width * 0.66, size.height * 0.41, size.width * 0.58,
        size.height * 0.44, size.width / 2, size.height * 0.44);
    path.cubicTo(size.width * 0.42, size.height * 0.44, size.width * 0.34,
        size.height * 0.41, size.width * 0.34, size.height * 0.41);
    path.cubicTo(size.width * 0.34, size.height * 0.41, size.width / 3,
        size.height * 0.42, size.width / 3, size.height * 0.44);
    path.cubicTo(size.width / 3, size.height * 0.46, size.width * 0.34,
        size.height * 0.47, size.width * 0.34, size.height * 0.47);
    path.cubicTo(size.width * 0.34, size.height * 0.47, size.width * 0.39,
        size.height * 0.51, size.width / 2, size.height * 0.51);
    path.cubicTo(size.width / 2, size.height * 0.51, size.width / 2,
        size.height * 0.51, size.width / 2, size.height * 0.51);
    canvas.drawPath(path, paint);

    // Path number 12

    paint.color = Color(0xff8473f1);
    path = Path();
    path.lineTo(size.width * 0.32, size.height / 3);
    path.cubicTo(size.width * 0.32, size.height / 3, size.width * 0.32,
        size.height * 0.39, size.width * 0.32, size.height * 0.39);
    path.cubicTo(size.width * 0.35, size.height * 0.42, size.width * 0.42,
        size.height * 0.44, size.width / 2, size.height * 0.44);
    path.cubicTo(size.width * 0.58, size.height * 0.44, size.width * 0.65,
        size.height * 0.42, size.width * 0.68, size.height * 0.39);
    path.cubicTo(size.width * 0.68, size.height * 0.39, size.width * 0.68,
        size.height / 3, size.width * 0.68, size.height / 3);
    path.cubicTo(size.width * 0.68, size.height / 3, size.width * 0.61,
        size.height * 0.38, size.width / 2, size.height * 0.38);
    path.cubicTo(size.width * 0.39, size.height * 0.38, size.width * 0.32,
        size.height / 3, size.width * 0.32, size.height / 3);
    path.cubicTo(size.width * 0.32, size.height / 3, size.width * 0.32,
        size.height / 3, size.width * 0.32, size.height / 3);
    canvas.drawPath(path, paint);

    // Path number 13

    paint.color = Color(0xffffffff);
    path = Path();
    path.lineTo(size.width / 2, size.height * 0.34);
    path.cubicTo(size.width * 0.4, size.height * 0.34, size.width * 0.36,
        size.height * 0.32, size.width * 0.34, size.height * 0.3);
    path.cubicTo(size.width / 3, size.height * 0.3, size.width * 0.34,
        size.height * 0.29, size.width * 0.34, size.height * 0.29);
    path.cubicTo(size.width * 0.37, size.height * 0.3, size.width * 0.42,
        size.height * 0.31, size.width / 2, size.height * 0.31);
    path.cubicTo(size.width / 2, size.height * 0.31, size.width / 2,
        size.height * 0.31, size.width / 2, size.height * 0.31);
    path.cubicTo(size.width * 0.58, size.height * 0.31, size.width * 0.63,
        size.height * 0.3, size.width * 0.66, size.height * 0.29);
    path.cubicTo(size.width * 0.66, size.height * 0.29, size.width * 0.67,
        size.height * 0.3, size.width * 0.66, size.height * 0.3);
    path.cubicTo(size.width * 0.64, size.height * 0.32, size.width * 0.6,
        size.height * 0.34, size.width / 2, size.height * 0.34);
    path.cubicTo(size.width / 2, size.height * 0.34, size.width / 2,
        size.height * 0.34, size.width / 2, size.height * 0.34);
    path.cubicTo(size.width / 2, size.height * 0.34, size.width / 2,
        size.height * 0.34, size.width / 2, size.height * 0.34);
    canvas.drawPath(path, paint);

    // Path number 14

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width / 2, size.height * 0.46);
    path.cubicTo(size.width * 0.59, size.height * 0.46, size.width * 0.64,
        size.height * 0.44, size.width * 0.66, size.height * 0.41);
    path.cubicTo(size.width * 0.66, size.height * 0.41, size.width * 0.66,
        size.height * 0.41, size.width * 0.66, size.height * 0.41);
    path.cubicTo(size.width * 0.66, size.height * 0.41, size.width * 0.58,
        size.height * 0.44, size.width / 2, size.height * 0.44);
    path.cubicTo(size.width * 0.42, size.height * 0.44, size.width * 0.34,
        size.height * 0.41, size.width * 0.34, size.height * 0.41);
    path.cubicTo(size.width * 0.34, size.height * 0.41, size.width * 0.34,
        size.height * 0.41, size.width * 0.34, size.height * 0.41);
    path.cubicTo(size.width * 0.35, size.height * 0.42, size.width * 0.39,
        size.height * 0.46, size.width / 2, size.height * 0.46);
    path.cubicTo(size.width / 2, size.height * 0.46, size.width / 2,
        size.height * 0.46, size.width / 2, size.height * 0.46);
    canvas.drawPath(path, paint);

    // Path number 15

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.6, size.height * 0.46);
    path.cubicTo(size.width * 0.6, size.height * 0.46, size.width * 0.58,
        size.height * 0.46, size.width * 0.58, size.height * 0.46);
    path.cubicTo(size.width * 0.58, size.height * 0.46, size.width * 0.59,
        size.height * 0.49, size.width * 0.59, size.height * 0.49);
    path.cubicTo(size.width * 0.59, size.height * 0.49, size.width * 0.6,
        size.height * 0.48, size.width * 0.6, size.height * 0.48);
    path.cubicTo(size.width * 0.6, size.height * 0.48, size.width * 0.6,
        size.height * 0.46, size.width * 0.6, size.height * 0.46);
    path.cubicTo(size.width * 0.6, size.height * 0.46, size.width * 0.6,
        size.height * 0.46, size.width * 0.6, size.height * 0.46);
    path.lineTo(size.width * 0.48, size.height * 0.47);
    path.cubicTo(size.width * 0.48, size.height * 0.47, size.width * 0.48,
        size.height * 0.49, size.width * 0.48, size.height / 2);
    path.cubicTo(size.width * 0.52, size.height / 2, size.width * 0.55,
        size.height / 2, size.width * 0.58, size.height * 0.49);
    path.cubicTo(size.width * 0.58, size.height * 0.49, size.width * 0.58,
        size.height * 0.47, size.width * 0.58, size.height * 0.47);
    path.cubicTo(size.width * 0.54, size.height * 0.47, size.width * 0.48,
        size.height * 0.47, size.width * 0.48, size.height * 0.47);
    path.cubicTo(size.width * 0.48, size.height * 0.47, size.width * 0.48,
        size.height * 0.47, size.width * 0.48, size.height * 0.47);
    path.lineTo(size.width * 0.59, size.height * 0.53);
    path.cubicTo(size.width * 0.59, size.height * 0.53, size.width * 0.58,
        size.height * 0.54, size.width * 0.58, size.height * 0.54);
    path.cubicTo(size.width * 0.58, size.height * 0.54, size.width * 0.58,
        size.height * 0.56, size.width * 0.58, size.height * 0.56);
    path.cubicTo(size.width * 0.58, size.height * 0.56, size.width * 0.59,
        size.height * 0.55, size.width * 0.59, size.height * 0.55);
    path.cubicTo(size.width * 0.59, size.height * 0.55, size.width * 0.59,
        size.height * 0.53, size.width * 0.59, size.height * 0.53);
    path.cubicTo(size.width * 0.59, size.height * 0.53, size.width * 0.59,
        size.height * 0.53, size.width * 0.59, size.height * 0.53);
    path.lineTo(size.width / 2, size.height * 0.54);
    path.cubicTo(size.width / 2, size.height * 0.54, size.width / 2,
        size.height * 0.56, size.width / 2, size.height * 0.56);
    path.cubicTo(size.width * 0.53, size.height * 0.57, size.width * 0.55,
        size.height * 0.57, size.width * 0.58, size.height * 0.56);
    path.cubicTo(size.width * 0.58, size.height * 0.56, size.width * 0.58,
        size.height * 0.54, size.width * 0.58, size.height * 0.54);
    path.cubicTo(size.width * 0.55, size.height * 0.54, size.width / 2,
        size.height * 0.54, size.width / 2, size.height * 0.54);
    path.cubicTo(size.width / 2, size.height * 0.54, size.width / 2,
        size.height * 0.54, size.width / 2, size.height * 0.54);
    canvas.drawPath(path, paint);

    // Path number 16

    paint.color = Color(0xffafabef);
    path = Path();
    path.lineTo(size.width * 0.7, size.height * 0.82);
    path.cubicTo(size.width * 0.76, size.height * 0.92, size.width * 0.62,
        size.height * 1.03, size.width * 0.56, size.height * 0.98);
    path.cubicTo(size.width * 0.53, size.height * 0.96, size.width * 0.49,
        size.height * 0.76, size.width * 0.52, size.height * 0.72);
    path.cubicTo(size.width * 0.56, size.height * 0.73, size.width * 0.59,
        size.height * 0.73, size.width * 0.62, size.height * 0.74);
    path.cubicTo(size.width * 0.64, size.height * 0.76, size.width * 0.67,
        size.height * 0.78, size.width * 0.7, size.height * 0.82);
    path.cubicTo(size.width * 0.7, size.height * 0.82, size.width * 0.7,
        size.height * 0.82, size.width * 0.7, size.height * 0.82);
    path.lineTo(size.width * 0.34, size.height * 0.88);
    path.cubicTo(size.width * 0.38, size.height * 0.91, size.width * 0.44,
        size.height * 0.93, size.width * 0.46, size.height * 0.9);
    path.cubicTo(size.width * 0.48, size.height * 0.88, size.width / 2,
        size.height * 0.77, size.width * 0.48, size.height * 0.73);
    path.cubicTo(size.width * 0.45, size.height * 0.73, size.width * 0.43,
        size.height * 0.73, size.width * 0.41, size.height * 0.74);
    path.cubicTo(size.width * 0.38, size.height * 0.76, size.width * 0.35,
        size.height * 0.8, size.width / 3, size.height * 0.83);
    path.cubicTo(size.width * 0.32, size.height * 0.85, size.width / 3,
        size.height * 0.87, size.width * 0.34, size.height * 0.88);
    path.cubicTo(size.width * 0.34, size.height * 0.88, size.width * 0.34,
        size.height * 0.88, size.width * 0.34, size.height * 0.88);
    path.lineTo(size.width * 0.31, size.height * 0.89);
    path.cubicTo(size.width * 0.3, size.height * 0.9, size.width * 0.34,
        size.height * 0.93, size.width * 0.34, size.height * 0.93);
    path.cubicTo(size.width * 0.35, size.height * 0.93, size.width * 0.35,
        size.height * 0.92, size.width * 0.35, size.height * 0.91);
    path.cubicTo(size.width * 0.35, size.height * 0.9, size.width / 3,
        size.height * 0.89, size.width * 0.32, size.height * 0.88);
    path.cubicTo(size.width * 0.32, size.height * 0.88, size.width * 0.31,
        size.height * 0.88, size.width * 0.31, size.height * 0.89);
    path.cubicTo(size.width * 0.31, size.height * 0.89, size.width * 0.31,
        size.height * 0.89, size.width * 0.31, size.height * 0.89);
    canvas.drawPath(path, paint);

    // Path number 17

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

    // Path number 18

    paint.color = Color(0xffafabef);
    path = Path();
    path.lineTo(size.width * 0.7, size.height * 0.69);
    path.cubicTo(size.width * 0.7, size.height * 0.72, size.width * 0.62,
        size.height * 0.75, size.width / 2, size.height * 0.75);
    path.cubicTo(size.width * 0.38, size.height * 0.75, size.width * 0.3,
        size.height * 0.72, size.width * 0.3, size.height * 0.69);
    path.cubicTo(size.width * 0.3, size.height * 0.69, size.width * 0.3,
        size.height * 0.68, size.width * 0.3, size.height * 0.68);
    path.cubicTo(size.width * 0.3, size.height * 0.68, size.width * 0.3,
        size.height * 0.68, size.width * 0.3, size.height * 0.68);
    path.cubicTo(size.width * 0.3, size.height * 0.68, size.width * 0.31,
        size.height * 0.68, size.width * 0.31, size.height * 0.68);
    path.cubicTo(size.width / 3, size.height * 0.65, size.width * 0.4,
        size.height * 0.64, size.width / 2, size.height * 0.64);
    path.cubicTo(size.width * 0.6, size.height * 0.64, size.width * 0.67,
        size.height * 0.65, size.width * 0.69, size.height * 0.68);
    path.cubicTo(size.width * 0.69, size.height * 0.68, size.width * 0.7,
        size.height * 0.68, size.width * 0.7, size.height * 0.68);
    path.cubicTo(size.width * 0.7, size.height * 0.68, size.width * 0.7,
        size.height * 0.68, size.width * 0.7, size.height * 0.68);
    path.cubicTo(size.width * 0.7, size.height * 0.68, size.width * 0.7,
        size.height * 0.69, size.width * 0.7, size.height * 0.69);
    path.cubicTo(size.width * 0.7, size.height * 0.69, size.width * 0.7,
        size.height * 0.69, size.width * 0.7, size.height * 0.69);
    canvas.drawPath(path, paint);

    // Path number 19

    paint.color = Color(0xffd1502c);
    path = Path();
    path.lineTo(size.width * 0.44, 0);
    path.cubicTo(size.width * 0.44, 0, size.width * 0.44, size.height * 0.02,
        size.width * 0.44, size.height * 0.02);
    path.cubicTo(size.width * 0.44, size.height * 0.02, size.width * 0.45,
        size.height * 0.02, size.width * 0.45, size.height * 0.02);
    path.cubicTo(size.width * 0.45, size.height * 0.02, size.width * 0.44, 0,
        size.width * 0.44, 0);
    path.cubicTo(
        size.width * 0.44, 0, size.width * 0.44, 0, size.width * 0.44, 0);
    path.lineTo(size.width * 0.62, size.height * 0.02);
    path.cubicTo(size.width * 0.62, size.height * 0.02, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.64,
        size.height * 0.04, size.width * 0.64, size.height * 0.04);
    path.cubicTo(size.width * 0.64, size.height * 0.04, size.width * 0.64,
        size.height * 0.01, size.width * 0.64, size.height * 0.01);
    path.cubicTo(size.width * 0.64, size.height * 0.01, size.width * 0.62,
        size.height * 0.02, size.width * 0.62, size.height * 0.02);
    path.cubicTo(size.width * 0.62, size.height * 0.02, size.width * 0.62,
        size.height * 0.02, size.width * 0.62, size.height * 0.02);
    canvas.drawPath(path, paint);

    // Path number 20

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.34, size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.03, size.width * 0.37,
        size.height / 5, size.width * 0.38, size.height * 0.22);
    path.cubicTo(size.width * 0.38, size.height * 0.24, size.width * 0.43,
        size.height * 0.26, size.width / 2, size.height * 0.26);
    path.cubicTo(size.width * 0.57, size.height * 0.26, size.width * 0.62,
        size.height * 0.24, size.width * 0.62, size.height * 0.22);
    path.cubicTo(size.width * 0.63, size.height / 5, size.width * 0.66,
        size.height * 0.03, size.width * 0.66, size.height * 0.03);
    path.cubicTo(size.width * 0.66, size.height * 0.03, size.width * 0.34,
        size.height * 0.03, size.width * 0.34, size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.03, size.width * 0.34,
        size.height * 0.03, size.width * 0.34, size.height * 0.03);
    canvas.drawPath(path, paint);

    // Path number 21

    paint.color = Color(0xffd1502c);
    path = Path();
    path.lineTo(size.width * 0.57, size.height * 0.23);
    path.cubicTo(size.width * 0.56, size.height / 5, size.width * 0.56,
        size.height * 0.19, size.width * 0.55, size.height * 0.17);
    path.cubicTo(size.width * 0.53, size.height * 0.16, size.width * 0.51,
        size.height * 0.16, size.width / 2, size.height * 0.17);
    path.cubicTo(size.width * 0.49, size.height * 0.18, size.width * 0.48,
        size.height / 5, size.width * 0.47, size.height / 5);
    path.cubicTo(size.width * 0.46, size.height * 0.23, size.width * 0.46,
        size.height * 0.24, size.width * 0.46, size.height * 0.26);
    path.cubicTo(size.width * 0.46, size.height * 0.26, size.width * 0.46,
        size.height * 0.26, size.width * 0.46, size.height * 0.26);
    path.cubicTo(size.width * 0.46, size.height * 0.24, size.width * 0.47,
        size.height * 0.22, size.width * 0.48, size.height / 5);
    path.cubicTo(size.width * 0.49, size.height * 0.19, size.width * 0.51,
        size.height * 0.17, size.width * 0.52, size.height * 0.17);
    path.cubicTo(size.width * 0.53, size.height * 0.18, size.width * 0.54,
        size.height * 0.19, size.width * 0.55, size.height * 0.19);
    path.cubicTo(size.width * 0.55, size.height / 5, size.width * 0.56,
        size.height / 5, size.width * 0.56, size.height * 0.22);
    path.cubicTo(size.width * 0.57, size.height * 0.23, size.width * 0.57,
        size.height * 0.24, size.width * 0.57, size.height / 4);
    path.cubicTo(size.width * 0.57, size.height / 4, size.width * 0.57,
        size.height / 4, size.width * 0.57, size.height / 4);
    path.cubicTo(size.width * 0.57, size.height * 0.24, size.width * 0.57,
        size.height * 0.23, size.width * 0.57, size.height * 0.23);
    path.cubicTo(size.width * 0.57, size.height * 0.23, size.width * 0.57,
        size.height * 0.23, size.width * 0.57, size.height * 0.23);
    path.lineTo(size.width * 0.42, size.height * 0.14);
    path.cubicTo(size.width * 0.42, size.height * 0.13, size.width * 0.43,
        size.height * 0.12, size.width * 0.43, size.height * 0.12);
    path.cubicTo(size.width * 0.44, size.height * 0.1, size.width * 0.45,
        size.height * 0.08, size.width * 0.45, size.height * 0.07);
    path.cubicTo(size.width * 0.46, size.height * 0.06, size.width * 0.46,
        size.height * 0.04, size.width * 0.46, size.height * 0.03);
    path.cubicTo(size.width * 0.46, size.height * 0.03, size.width * 0.46,
        size.height * 0.03, size.width * 0.46, size.height * 0.03);
    path.cubicTo(size.width * 0.46, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.04, size.width * 0.45,
        size.height * 0.05, size.width * 0.45, size.height * 0.06);
    path.cubicTo(size.width * 0.45, size.height * 0.09, size.width * 0.44,
        size.height * 0.12, size.width * 0.42, size.height * 0.13);
    path.cubicTo(size.width * 0.4, size.height * 0.14, size.width * 0.38,
        size.height * 0.14, size.width * 0.37, size.height * 0.15);
    path.cubicTo(size.width * 0.37, size.height * 0.15, size.width * 0.36,
        size.height * 0.16, size.width * 0.36, size.height * 0.16);
    path.cubicTo(size.width * 0.36, size.height * 0.16, size.width * 0.36,
        size.height * 0.17, size.width * 0.36, size.height * 0.17);
    path.cubicTo(size.width * 0.37, size.height * 0.16, size.width * 0.38,
        size.height * 0.15, size.width * 0.39, size.height * 0.14);
    path.cubicTo(size.width * 0.4, size.height * 0.14, size.width * 0.41,
        size.height * 0.14, size.width * 0.42, size.height * 0.14);
    path.cubicTo(size.width * 0.42, size.height * 0.14, size.width * 0.42,
        size.height * 0.14, size.width * 0.42, size.height * 0.14);
    canvas.drawPath(path, paint);

    // Path number 22

    paint.color = Color(0xffd1502c);
    path = Path();
    path.lineTo(size.width * 0.54, size.height / 4);
    path.cubicTo(size.width * 0.54, size.height * 0.24, size.width * 0.54,
        size.height * 0.23, size.width * 0.53, size.height * 0.22);
    path.cubicTo(size.width * 0.53, size.height / 5, size.width * 0.53,
        size.height / 5, size.width * 0.52, size.height / 5);
    path.cubicTo(size.width * 0.52, size.height / 5, size.width * 0.51,
        size.height / 5, size.width * 0.51, size.height / 5);
    path.cubicTo(size.width / 2, size.height * 0.22, size.width / 2,
        size.height * 0.22, size.width * 0.49, size.height * 0.23);
    path.cubicTo(size.width * 0.49, size.height * 0.24, size.width * 0.49,
        size.height / 4, size.width * 0.49, size.height * 0.26);
    path.cubicTo(size.width * 0.49, size.height * 0.26, size.width * 0.49,
        size.height * 0.26, size.width * 0.49, size.height * 0.26);
    path.cubicTo(size.width * 0.49, size.height / 4, size.width / 2,
        size.height * 0.24, size.width / 2, size.height * 0.23);
    path.cubicTo(size.width / 2, size.height * 0.22, size.width * 0.51,
        size.height / 5, size.width * 0.52, size.height * 0.22);
    path.cubicTo(size.width * 0.52, size.height * 0.22, size.width * 0.53,
        size.height * 0.23, size.width * 0.53, size.height * 0.23);
    path.cubicTo(size.width * 0.53, size.height * 0.24, size.width * 0.53,
        size.height * 0.24, size.width * 0.53, size.height / 4);
    path.cubicTo(size.width * 0.53, size.height / 4, size.width * 0.53,
        size.height / 4, size.width * 0.53, size.height * 0.26);
    path.cubicTo(size.width * 0.54, size.height * 0.26, size.width * 0.54,
        size.height * 0.26, size.width * 0.54, size.height * 0.26);
    path.cubicTo(size.width * 0.54, size.height / 4, size.width * 0.54,
        size.height / 4, size.width * 0.54, size.height / 4);
    path.cubicTo(size.width * 0.54, size.height / 4, size.width * 0.54,
        size.height / 4, size.width * 0.54, size.height / 4);
    path.lineTo(size.width * 0.61, size.height * 0.13);
    path.cubicTo(size.width * 0.59, size.height * 0.11, size.width * 0.56,
        size.height * 0.08, size.width * 0.57, size.height * 0.04);
    path.cubicTo(size.width * 0.58, size.height * 0.04, size.width * 0.57,
        size.height * 0.04, size.width * 0.57, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.07, size.width * 0.58,
        size.height * 0.1, size.width * 0.59, size.height * 0.12);
    path.cubicTo(size.width * 0.61, size.height * 0.14, size.width * 0.62,
        size.height * 0.15, size.width * 0.62, size.height * 0.17);
    path.cubicTo(size.width * 0.63, size.height * 0.17, size.width * 0.63,
        size.height * 0.18, size.width * 0.63, size.height * 0.19);
    path.cubicTo(size.width * 0.63, size.height * 0.18, size.width * 0.63,
        size.height * 0.17, size.width * 0.64, size.height * 0.17);
    path.cubicTo(size.width * 0.63, size.height * 0.15, size.width * 0.62,
        size.height * 0.14, size.width * 0.61, size.height * 0.13);
    path.cubicTo(size.width * 0.61, size.height * 0.13, size.width * 0.61,
        size.height * 0.13, size.width * 0.61, size.height * 0.13);
    path.lineTo(size.width * 0.35, size.height * 0.12);
    path.cubicTo(size.width * 0.36, size.height * 0.12, size.width * 0.36,
        size.height * 0.12, size.width * 0.37, size.height * 0.12);
    path.cubicTo(size.width * 0.38, size.height * 0.11, size.width * 0.39,
        size.height * 0.1, size.width * 0.39, size.height * 0.09);
    path.cubicTo(size.width * 0.4, size.height * 0.08, size.width * 0.4,
        size.height * 0.07, size.width * 0.4, size.height * 0.06);
    path.cubicTo(size.width * 0.4, size.height * 0.05, size.width * 0.4,
        size.height * 0.04, size.width * 0.4, size.height * 0.03);
    path.cubicTo(size.width * 0.4, size.height * 0.03, size.width * 0.39,
        size.height * 0.03, size.width * 0.39, size.height * 0.03);
    path.cubicTo(size.width * 0.39, size.height * 0.04, size.width * 0.39,
        size.height * 0.05, size.width * 0.39, size.height * 0.06);
    path.cubicTo(size.width * 0.39, size.height * 0.07, size.width * 0.39,
        size.height * 0.09, size.width * 0.38, size.height * 0.1);
    path.cubicTo(size.width * 0.37, size.height * 0.11, size.width * 0.37,
        size.height * 0.11, size.width * 0.36, size.height * 0.12);
    path.cubicTo(size.width * 0.36, size.height * 0.12, size.width * 0.35,
        size.height * 0.12, size.width * 0.35, size.height * 0.12);
    path.cubicTo(size.width * 0.35, size.height * 0.12, size.width * 0.35,
        size.height * 0.12, size.width * 0.35, size.height * 0.12);
    path.cubicTo(size.width * 0.35, size.height * 0.12, size.width * 0.35,
        size.height * 0.12, size.width * 0.35, size.height * 0.12);
    path.lineTo(size.width * 0.65, size.height * 0.1);
    path.cubicTo(size.width * 0.64, size.height * 0.09, size.width * 0.63,
        size.height * 0.09, size.width * 0.62, size.height * 0.08);
    path.cubicTo(size.width * 0.62, size.height * 0.07, size.width * 0.61,
        size.height * 0.06, size.width * 0.61, size.height * 0.06);
    path.cubicTo(size.width * 0.61, size.height * 0.05, size.width * 0.61,
        size.height * 0.04, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.04, size.width * 0.6,
        size.height * 0.06, size.width * 0.61, size.height * 0.07);
    path.cubicTo(size.width * 0.62, size.height * 0.08, size.width * 0.63,
        size.height * 0.09, size.width * 0.64, size.height * 0.1);
    path.cubicTo(size.width * 0.64, size.height * 0.11, size.width * 0.64,
        size.height * 0.11, size.width * 0.65, size.height * 0.12);
    path.cubicTo(size.width * 0.65, size.height * 0.12, size.width * 0.65,
        size.height * 0.11, size.width * 0.65, size.height * 0.11);
    path.cubicTo(size.width * 0.65, size.height * 0.11, size.width * 0.65,
        size.height * 0.11, size.width * 0.65, size.height * 0.1);
    path.cubicTo(size.width * 0.65, size.height * 0.1, size.width * 0.65,
        size.height * 0.1, size.width * 0.65, size.height * 0.1);
    path.lineTo(size.width * 0.57, size.height * 0.14);
    path.cubicTo(size.width * 0.55, size.height * 0.13, size.width * 0.54,
        size.height * 0.11, size.width * 0.53, size.height * 0.09);
    path.cubicTo(size.width * 0.53, size.height * 0.08, size.width * 0.53,
        size.height * 0.07, size.width * 0.53, size.height * 0.06);
    path.cubicTo(size.width * 0.53, size.height * 0.05, size.width * 0.53,
        size.height * 0.04, size.width * 0.53, size.height * 0.03);
    path.cubicTo(size.width * 0.53, size.height * 0.03, size.width * 0.52,
        size.height * 0.03, size.width * 0.52, size.height * 0.03);
    path.cubicTo(size.width * 0.52, size.height * 0.05, size.width * 0.52,
        size.height * 0.07, size.width * 0.52, size.height * 0.09);
    path.cubicTo(size.width * 0.53, size.height * 0.11, size.width * 0.54,
        size.height * 0.13, size.width * 0.55, size.height * 0.14);
    path.cubicTo(size.width * 0.57, size.height * 0.16, size.width * 0.58,
        size.height * 0.17, size.width * 0.59, size.height * 0.19);
    path.cubicTo(size.width * 0.6, size.height / 5, size.width * 0.6,
        size.height * 0.22, size.width * 0.6, size.height * 0.24);
    path.cubicTo(size.width * 0.61, size.height * 0.24, size.width * 0.61,
        size.height * 0.24, size.width * 0.61, size.height * 0.24);
    path.cubicTo(size.width * 0.61, size.height / 5, size.width * 0.59,
        size.height * 0.17, size.width * 0.57, size.height * 0.14);
    path.cubicTo(size.width * 0.57, size.height * 0.14, size.width * 0.57,
        size.height * 0.14, size.width * 0.57, size.height * 0.14);
    path.lineTo(size.width * 0.42, size.height / 5);
    path.cubicTo(size.width * 0.43, size.height * 0.18, size.width * 0.44,
        size.height * 0.16, size.width * 0.46, size.height * 0.15);
    path.cubicTo(size.width * 0.47, size.height * 0.14, size.width * 0.48,
        size.height * 0.12, size.width * 0.48, size.height * 0.11);
    path.cubicTo(size.width * 0.48, size.height * 0.1, size.width * 0.48,
        size.height * 0.09, size.width * 0.48, size.height * 0.08);
    path.cubicTo(size.width * 0.48, size.height * 0.06, size.width * 0.49,
        size.height * 0.05, size.width * 0.49, size.height * 0.04);
    path.cubicTo(size.width * 0.49, size.height * 0.04, size.width * 0.48,
        size.height * 0.04, size.width * 0.48, size.height * 0.04);
    path.cubicTo(size.width * 0.48, size.height * 0.06, size.width * 0.48,
        size.height * 0.09, size.width * 0.47, size.height * 0.11);
    path.cubicTo(size.width * 0.47, size.height * 0.13, size.width * 0.45,
        size.height * 0.14, size.width * 0.44, size.height * 0.16);
    path.cubicTo(size.width * 0.42, size.height * 0.17, size.width * 0.42,
        size.height * 0.18, size.width * 0.42, size.height / 5);
    path.cubicTo(size.width * 0.41, size.height * 0.22, size.width * 0.42,
        size.height * 0.23, size.width * 0.42, size.height / 4);
    path.cubicTo(size.width * 0.42, size.height / 4, size.width * 0.42,
        size.height / 4, size.width * 0.42, size.height / 4);
    path.cubicTo(size.width * 0.42, size.height * 0.23, size.width * 0.42,
        size.height * 0.22, size.width * 0.42, size.height / 5);
    path.cubicTo(size.width * 0.42, size.height / 5, size.width * 0.42,
        size.height / 5, size.width * 0.42, size.height / 5);
    canvas.drawPath(path, paint);

    // Path number 23

    paint.color = Color(0xffffd15c);
    path = Path();
    path.lineTo(size.width * 0.66, size.height * 0.03);
    path.cubicTo(size.width * 0.66, size.height * 0.03, size.width * 0.66,
        size.height * 0.03, size.width * 0.66, size.height * 0.03);
    path.cubicTo(size.width * 0.66, size.height * 0.03, size.width * 0.66,
        size.height * 0.03, size.width * 0.66, size.height * 0.03);
    path.cubicTo(size.width * 0.66, size.height * 0.04, size.width * 0.64,
        size.height * 0.05, size.width * 0.61, size.height * 0.05);
    path.cubicTo(size.width * 0.61, size.height * 0.05, size.width * 0.61,
        size.height * 0.05, size.width * 0.61, size.height * 0.05);
    path.cubicTo(size.width * 0.6, size.height * 0.06, size.width * 0.58,
        size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.57, size.height * 0.06, size.width * 0.57,
        size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.56, size.height * 0.06, size.width * 0.54,
        size.height * 0.06, size.width * 0.53, size.height * 0.06);
    path.cubicTo(size.width * 0.53, size.height * 0.06, size.width * 0.52,
        size.height * 0.06, size.width * 0.52, size.height * 0.06);
    path.cubicTo(size.width * 0.51, size.height * 0.06, size.width * 0.51,
        size.height * 0.06, size.width / 2, size.height * 0.06);
    path.cubicTo(size.width * 0.49, size.height * 0.06, size.width * 0.49,
        size.height * 0.06, size.width * 0.48, size.height * 0.06);
    path.cubicTo(size.width * 0.48, size.height * 0.06, size.width * 0.48,
        size.height * 0.06, size.width * 0.48, size.height * 0.06);
    path.cubicTo(size.width * 0.47, size.height * 0.06, size.width * 0.46,
        size.height * 0.06, size.width * 0.45, size.height * 0.06);
    path.cubicTo(size.width * 0.45, size.height * 0.06, size.width * 0.45,
        size.height * 0.06, size.width * 0.45, size.height * 0.06);
    path.cubicTo(size.width * 0.43, size.height * 0.06, size.width * 0.41,
        size.height * 0.06, size.width * 0.4, size.height * 0.06);
    path.cubicTo(size.width * 0.4, size.height * 0.05, size.width * 0.4,
        size.height * 0.05, size.width * 0.39, size.height * 0.05);
    path.cubicTo(size.width * 0.36, size.height * 0.05, size.width * 0.34,
        size.height * 0.04, size.width * 0.34, size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.03, size.width * 0.34,
        size.height * 0.03, size.width * 0.34, size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.03, size.width * 0.34,
        size.height * 0.03, size.width * 0.34, size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.02, size.width * 0.37,
        size.height * 0.01, size.width * 0.43, 0);
    path.cubicTo(size.width * 0.43, size.height * 0.01, size.width * 0.45,
        size.height * 0.02, size.width * 0.45, size.height * 0.02);
    path.cubicTo(size.width * 0.45, size.height * 0.02, size.width * 0.44, 0,
        size.width * 0.44, 0);
    path.cubicTo(size.width * 0.46, 0, size.width * 0.48, 0, size.width / 2, 0);
    path.cubicTo(size.width * 0.56, 0, size.width * 0.61, size.height * 0.01,
        size.width * 0.64, size.height * 0.01);
    path.cubicTo(size.width * 0.63, size.height * 0.02, size.width * 0.63,
        size.height * 0.02, size.width * 0.63, size.height * 0.02);
    path.cubicTo(size.width * 0.63, size.height * 0.02, size.width * 0.64,
        size.height * 0.02, size.width * 0.65, size.height * 0.02);
    path.cubicTo(size.width * 0.66, size.height * 0.02, size.width * 0.66,
        size.height * 0.03, size.width * 0.66, size.height * 0.03);
    path.cubicTo(size.width * 0.66, size.height * 0.03, size.width * 0.66,
        size.height * 0.03, size.width * 0.66, size.height * 0.03);
    canvas.drawPath(path, paint);

    // Path number 24

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.61, size.height * 0.05);
    path.cubicTo(size.width * 0.61, size.height * 0.05, size.width * 0.61,
        size.height * 0.05, size.width * 0.61, size.height * 0.05);
    path.cubicTo(size.width * 0.6, size.height * 0.05, size.width * 0.58,
        size.height * 0.05, size.width * 0.57, size.height * 0.05);
    path.cubicTo(size.width * 0.57, size.height * 0.05, size.width * 0.57,
        size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.56, size.height * 0.06, size.width * 0.54,
        size.height * 0.06, size.width * 0.53, size.height * 0.06);
    path.cubicTo(size.width * 0.53, size.height * 0.06, size.width * 0.52,
        size.height * 0.06, size.width * 0.52, size.height * 0.06);
    path.cubicTo(size.width * 0.51, size.height * 0.06, size.width * 0.51,
        size.height * 0.06, size.width / 2, size.height * 0.06);
    path.cubicTo(size.width * 0.49, size.height * 0.06, size.width * 0.49,
        size.height * 0.06, size.width * 0.48, size.height * 0.06);
    path.cubicTo(size.width * 0.48, size.height * 0.06, size.width * 0.48,
        size.height * 0.06, size.width * 0.48, size.height * 0.06);
    path.cubicTo(size.width * 0.47, size.height * 0.06, size.width * 0.46,
        size.height * 0.06, size.width * 0.45, size.height * 0.06);
    path.cubicTo(size.width * 0.45, size.height * 0.06, size.width * 0.45,
        size.height * 0.06, size.width * 0.45, size.height * 0.06);
    path.cubicTo(size.width * 0.43, size.height * 0.05, size.width * 0.41,
        size.height * 0.05, size.width * 0.4, size.height * 0.05);
    path.cubicTo(size.width * 0.4, size.height * 0.05, size.width * 0.4,
        size.height * 0.05, size.width * 0.39, size.height * 0.05);
    path.cubicTo(size.width * 0.36, size.height * 0.04, size.width * 0.34,
        size.height * 0.04, size.width * 0.34, size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.03, size.width * 0.34,
        size.height * 0.03, size.width * 0.34, size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.03, size.width * 0.34,
        size.height * 0.03, size.width * 0.34, size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.03, size.width * 0.34,
        size.height * 0.03, size.width * 0.34, size.height * 0.03);
    path.cubicTo(size.width * 0.34, size.height * 0.04, size.width * 0.36,
        size.height * 0.05, size.width * 0.39, size.height * 0.05);
    path.cubicTo(size.width * 0.4, size.height * 0.05, size.width * 0.4,
        size.height * 0.05, size.width * 0.4, size.height * 0.06);
    path.cubicTo(size.width * 0.41, size.height * 0.06, size.width * 0.43,
        size.height * 0.06, size.width * 0.45, size.height * 0.06);
    path.cubicTo(size.width * 0.45, size.height * 0.06, size.width * 0.45,
        size.height * 0.06, size.width * 0.45, size.height * 0.06);
    path.cubicTo(size.width * 0.46, size.height * 0.06, size.width * 0.47,
        size.height * 0.06, size.width * 0.48, size.height * 0.06);
    path.cubicTo(size.width * 0.48, size.height * 0.06, size.width * 0.48,
        size.height * 0.06, size.width * 0.48, size.height * 0.06);
    path.cubicTo(size.width * 0.49, size.height * 0.06, size.width * 0.49,
        size.height * 0.06, size.width / 2, size.height * 0.06);
    path.cubicTo(size.width * 0.51, size.height * 0.06, size.width * 0.51,
        size.height * 0.06, size.width * 0.52, size.height * 0.06);
    path.cubicTo(size.width * 0.52, size.height * 0.06, size.width * 0.53,
        size.height * 0.06, size.width * 0.53, size.height * 0.06);
    path.cubicTo(size.width * 0.54, size.height * 0.06, size.width * 0.56,
        size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.57, size.height * 0.06, size.width * 0.57,
        size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.58, size.height * 0.06, size.width * 0.6,
        size.height * 0.06, size.width * 0.61, size.height * 0.05);
    path.cubicTo(size.width * 0.61, size.height * 0.05, size.width * 0.61,
        size.height * 0.05, size.width * 0.61, size.height * 0.05);
    path.cubicTo(size.width * 0.64, size.height * 0.05, size.width * 0.66,
        size.height * 0.04, size.width * 0.66, size.height * 0.03);
    path.cubicTo(size.width * 0.66, size.height * 0.03, size.width * 0.66,
        size.height * 0.03, size.width * 0.66, size.height * 0.03);
    path.cubicTo(size.width * 0.66, size.height * 0.03, size.width * 0.66,
        size.height * 0.03, size.width * 0.66, size.height * 0.03);
    path.cubicTo(size.width * 0.66, size.height * 0.03, size.width * 0.66,
        size.height * 0.03, size.width * 0.66, size.height * 0.03);
    path.cubicTo(size.width * 0.66, size.height * 0.03, size.width * 0.64,
        size.height * 0.04, size.width * 0.61, size.height * 0.05);
    path.cubicTo(size.width * 0.61, size.height * 0.05, size.width * 0.61,
        size.height * 0.05, size.width * 0.61, size.height * 0.05);
    canvas.drawPath(path, paint);

    // Path number 25

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.cubicTo(size.width * 0.56, size.height * 0.04, size.width * 0.56,
        size.height * 0.04, size.width * 0.56, size.height * 0.04);
    path.lineTo(size.width * 0.4, size.height * 0.02);
    path.cubicTo(size.width * 0.4, size.height * 0.02, size.width * 0.4,
        size.height * 0.02, size.width * 0.4, size.height * 0.02);
    path.cubicTo(size.width * 0.4, size.height * 0.02, size.width * 0.39,
        size.height * 0.02, size.width * 0.39, size.height * 0.02);
    path.cubicTo(size.width * 0.39, size.height * 0.02, size.width * 0.39,
        size.height * 0.02, size.width * 0.39, size.height * 0.02);
    path.cubicTo(size.width * 0.39, size.height * 0.02, size.width * 0.39,
        size.height * 0.02, size.width * 0.39, size.height * 0.02);
    path.cubicTo(size.width * 0.39, size.height * 0.02, size.width * 0.39,
        size.height * 0.03, size.width * 0.39, size.height * 0.03);
    path.cubicTo(size.width * 0.39, size.height * 0.03, size.width * 0.39,
        size.height * 0.03, size.width * 0.39, size.height * 0.03);
    path.cubicTo(size.width * 0.39, size.height * 0.03, size.width * 0.39,
        size.height * 0.03, size.width * 0.39, size.height * 0.02);
    path.cubicTo(size.width * 0.39, size.height * 0.03, size.width * 0.39,
        size.height * 0.03, size.width * 0.39, size.height * 0.03);
    path.cubicTo(size.width * 0.39, size.height * 0.03, size.width * 0.39,
        size.height * 0.03, size.width * 0.39, size.height * 0.03);
    path.cubicTo(size.width * 0.39, size.height * 0.03, size.width * 0.39,
        size.height * 0.03, size.width * 0.4, size.height * 0.03);
    path.cubicTo(size.width * 0.4, size.height * 0.03, size.width * 0.4,
        size.height * 0.02, size.width * 0.4, size.height * 0.02);
    path.cubicTo(size.width * 0.4, size.height * 0.02, size.width * 0.4,
        size.height * 0.02, size.width * 0.4, size.height * 0.02);
    path.cubicTo(size.width * 0.4, size.height * 0.02, size.width * 0.4,
        size.height * 0.02, size.width * 0.4, size.height * 0.02);
    path.cubicTo(size.width * 0.4, size.height * 0.02, size.width * 0.4,
        size.height * 0.02, size.width * 0.4, size.height * 0.02);
    canvas.drawPath(path, paint);

    // Path number 26

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.4,
        size.height * 0.02, size.width * 0.4, size.height * 0.02);
    path.cubicTo(size.width * 0.4, size.height * 0.02, size.width * 0.4,
        size.height * 0.02, size.width * 0.4, size.height * 0.02);
    path.cubicTo(size.width * 0.4, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    path.cubicTo(size.width * 0.41, size.height * 0.02, size.width * 0.41,
        size.height * 0.02, size.width * 0.41, size.height * 0.02);
    canvas.drawPath(path, paint);

    // Path number 27

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.4,
        size.height * 0.03, size.width * 0.4, size.height * 0.03);
    path.cubicTo(size.width * 0.4, size.height * 0.03, size.width * 0.4,
        size.height * 0.03, size.width * 0.4, size.height * 0.03);
    path.cubicTo(size.width * 0.4, size.height * 0.03, size.width * 0.4,
        size.height * 0.03, size.width * 0.4, size.height * 0.03);
    path.cubicTo(size.width * 0.4, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    path.cubicTo(size.width * 0.41, size.height * 0.03, size.width * 0.41,
        size.height * 0.03, size.width * 0.41, size.height * 0.03);
    canvas.drawPath(path, paint);

    // Path number 28

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    path.cubicTo(size.width * 0.42, size.height * 0.02, size.width * 0.42,
        size.height * 0.02, size.width * 0.42, size.height * 0.02);
    canvas.drawPath(path, paint);

    // Path number 29

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.56, size.height * 0.01);
    path.cubicTo(size.width * 0.56, size.height * 0.01, size.width * 0.56,
        size.height * 0.01, size.width * 0.56, size.height * 0.01);
    path.cubicTo(size.width * 0.56, size.height * 0.01, size.width * 0.56,
        size.height * 0.01, size.width * 0.56, size.height * 0.01);
    path.cubicTo(size.width * 0.56, size.height * 0.01, size.width * 0.56,
        size.height * 0.01, size.width * 0.55, size.height * 0.01);
    path.cubicTo(size.width * 0.55, size.height * 0.01, size.width * 0.55,
        size.height * 0.01, size.width * 0.55, size.height * 0.01);
    path.cubicTo(size.width * 0.55, size.height * 0.01, size.width * 0.55,
        size.height * 0.01, size.width * 0.55, size.height * 0.01);
    path.cubicTo(size.width * 0.55, size.height * 0.01, size.width * 0.55,
        size.height * 0.02, size.width * 0.55, size.height * 0.02);
    path.cubicTo(size.width * 0.55, size.height * 0.02, size.width * 0.55,
        size.height * 0.02, size.width * 0.55, size.height * 0.02);
    path.cubicTo(size.width * 0.55, size.height * 0.02, size.width * 0.55,
        size.height * 0.02, size.width * 0.55, size.height * 0.02);
    path.cubicTo(size.width * 0.55, size.height * 0.02, size.width * 0.55,
        size.height * 0.02, size.width * 0.55, size.height * 0.02);
    path.cubicTo(size.width * 0.55, size.height * 0.02, size.width * 0.55,
        size.height * 0.02, size.width * 0.55, size.height * 0.02);
    path.cubicTo(size.width * 0.55, size.height * 0.02, size.width * 0.55,
        size.height * 0.02, size.width * 0.55, size.height * 0.02);
    path.cubicTo(size.width * 0.55, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.01, size.width * 0.56,
        size.height * 0.01, size.width * 0.56, size.height * 0.01);
    path.cubicTo(size.width * 0.56, size.height * 0.01, size.width * 0.56,
        size.height * 0.01, size.width * 0.56, size.height * 0.01);
    canvas.drawPath(path, paint);

    // Path number 30

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.58, size.height * 0.01);
    path.cubicTo(size.width * 0.58, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.01, size.width * 0.57, size.height * 0.01);
    path.cubicTo(size.width * 0.57, size.height * 0.01, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.58, size.height * 0.02);
    path.cubicTo(size.width * 0.58, size.height * 0.02, size.width * 0.58,
        size.height * 0.02, size.width * 0.58, size.height * 0.02);
    path.cubicTo(size.width * 0.58, size.height * 0.02, size.width * 0.58,
        size.height * 0.02, size.width * 0.58, size.height * 0.02);
    path.cubicTo(size.width * 0.58, size.height * 0.02, size.width * 0.58,
        size.height * 0.01, size.width * 0.58, size.height * 0.01);
    path.cubicTo(size.width * 0.58, size.height * 0.01, size.width * 0.58,
        size.height * 0.01, size.width * 0.58, size.height * 0.01);
    canvas.drawPath(path, paint);

    // Path number 31

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.56,
        size.height * 0.02, size.width * 0.56, size.height * 0.02);
    path.cubicTo(size.width * 0.56, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.cubicTo(size.width * 0.57, size.height * 0.02, size.width * 0.57,
        size.height * 0.02, size.width * 0.57, size.height * 0.02);
    path.lineTo(size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width * 0.51,
        size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width * 0.51,
        size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width / 2,
        size.height * 0.01, size.width / 2, size.height * 0.01);
    path.cubicTo(size.width / 2, size.height * 0.01, size.width / 2,
        size.height * 0.01, size.width / 2, size.height * 0.01);
    path.cubicTo(size.width / 2, size.height * 0.01, size.width / 2,
        size.height * 0.01, size.width / 2, size.height * 0.01);
    path.cubicTo(size.width / 2, size.height * 0.01, size.width / 2,
        size.height * 0.01, size.width / 2, size.height * 0.01);
    path.cubicTo(size.width / 2, size.height * 0.01, size.width / 2,
        size.height * 0.01, size.width / 2, size.height * 0.01);
    path.cubicTo(size.width / 2, size.height * 0.01, size.width / 2,
        size.height * 0.01, size.width / 2, size.height * 0.01);
    path.cubicTo(size.width / 2, size.height * 0.01, size.width / 2,
        size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width * 0.51,
        size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width * 0.51,
        size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width * 0.51,
        size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width * 0.51,
        size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width * 0.51,
        size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width * 0.51,
        size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.cubicTo(size.width * 0.51, size.height * 0.01, size.width * 0.51,
        size.height * 0.01, size.width * 0.51, size.height * 0.01);
    path.lineTo(size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width * 0.49, size.height * 0.04, size.width * 0.49,
        size.height * 0.04, size.width * 0.49, size.height * 0.04);
    path.cubicTo(size.width * 0.49, size.height * 0.04, size.width * 0.49,
        size.height * 0.04, size.width * 0.49, size.height * 0.04);
    path.cubicTo(size.width * 0.49, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    canvas.drawPath(path, paint);

    // Path number 32

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.02, size.width * 0.61, size.height * 0.02);
    path.cubicTo(size.width * 0.61, size.height * 0.02, size.width * 0.61,
        size.height * 0.02, size.width * 0.6, size.height * 0.02);
    path.cubicTo(size.width * 0.6, size.height * 0.02, size.width * 0.6,
        size.height * 0.02, size.width * 0.6, size.height * 0.02);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.cubicTo(size.width * 0.61, size.height * 0.03, size.width * 0.61,
        size.height * 0.03, size.width * 0.61, size.height * 0.03);
    path.lineTo(size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.04);
    path.cubicTo(size.width * 0.6, size.height * 0.04, size.width * 0.6,
        size.height * 0.04, size.width * 0.6, size.height * 0.04);
    path.cubicTo(size.width * 0.6, size.height * 0.04, size.width * 0.6,
        size.height * 0.04, size.width * 0.6, size.height * 0.04);
    path.cubicTo(size.width * 0.6, size.height * 0.04, size.width * 0.6,
        size.height * 0.04, size.width * 0.6, size.height * 0.04);
    path.cubicTo(size.width * 0.6, size.height * 0.04, size.width * 0.6,
        size.height * 0.04, size.width * 0.6, size.height * 0.04);
    path.cubicTo(size.width * 0.6, size.height * 0.04, size.width * 0.6,
        size.height * 0.04, size.width * 0.6, size.height * 0.04);
    path.cubicTo(size.width * 0.6, size.height * 0.04, size.width * 0.6,
        size.height * 0.04, size.width * 0.6, size.height * 0.04);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    path.cubicTo(size.width * 0.6, size.height * 0.03, size.width * 0.6,
        size.height * 0.03, size.width * 0.6, size.height * 0.03);
    canvas.drawPath(path, paint);

    // Path number 33

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.63, size.height * 0.03);
    path.cubicTo(size.width * 0.63, size.height * 0.03, size.width * 0.63,
        size.height * 0.03, size.width * 0.63, size.height * 0.03);
    path.cubicTo(size.width * 0.63, size.height * 0.03, size.width * 0.63,
        size.height * 0.03, size.width * 0.63, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.62, size.height * 0.03, size.width * 0.62,
        size.height * 0.03, size.width * 0.62, size.height * 0.03);
    path.cubicTo(size.width * 0.63, size.height * 0.03, size.width * 0.63,
        size.height * 0.03, size.width * 0.63, size.height * 0.03);
    path.cubicTo(size.width * 0.63, size.height * 0.03, size.width * 0.63,
        size.height * 0.03, size.width * 0.63, size.height * 0.03);
    path.cubicTo(size.width * 0.63, size.height * 0.03, size.width * 0.63,
        size.height * 0.03, size.width * 0.63, size.height * 0.03);
    path.lineTo(size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.43,
        size.height * 0.04, size.width * 0.43, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.43,
        size.height * 0.04, size.width * 0.43, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.43,
        size.height * 0.04, size.width * 0.43, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.43,
        size.height * 0.04, size.width * 0.43, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.43,
        size.height * 0.04, size.width * 0.43, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.43,
        size.height * 0.04, size.width * 0.43, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.43,
        size.height * 0.04, size.width * 0.43, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.43,
        size.height * 0.04, size.width * 0.43, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.43,
        size.height * 0.04, size.width * 0.43, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.43,
        size.height * 0.04, size.width * 0.43, size.height * 0.04);
    path.cubicTo(size.width * 0.43, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.cubicTo(size.width * 0.44, size.height * 0.04, size.width * 0.44,
        size.height * 0.04, size.width * 0.44, size.height * 0.04);
    path.lineTo(size.width * 0.46, size.height * 0.03);
    path.cubicTo(size.width * 0.46, size.height * 0.03, size.width * 0.46,
        size.height * 0.03, size.width * 0.46, size.height * 0.03);
    path.cubicTo(size.width * 0.46, size.height * 0.03, size.width * 0.46,
        size.height * 0.03, size.width * 0.46, size.height * 0.03);
    path.cubicTo(size.width * 0.46, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.45,
        size.height * 0.03, size.width * 0.45, size.height * 0.03);
    path.cubicTo(size.width * 0.45, size.height * 0.03, size.width * 0.46,
        size.height * 0.03, size.width * 0.46, size.height * 0.03);
    path.cubicTo(size.width * 0.46, size.height * 0.03, size.width * 0.46,
        size.height * 0.03, size.width * 0.46, size.height * 0.03);
    path.cubicTo(size.width * 0.46, size.height * 0.03, size.width * 0.46,
        size.height * 0.03, size.width * 0.46, size.height * 0.03);
    path.cubicTo(size.width * 0.46, size.height * 0.03, size.width * 0.46,
        size.height * 0.03, size.width * 0.46, size.height * 0.03);
    path.lineTo(size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.02);
    path.cubicTo(size.width * 0.37, size.height * 0.02, size.width * 0.37,
        size.height * 0.02, size.width * 0.37, size.height * 0.02);
    path.cubicTo(size.width * 0.37, size.height * 0.02, size.width * 0.37,
        size.height * 0.02, size.width * 0.37, size.height * 0.02);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.36,
        size.height * 0.03, size.width * 0.36, size.height * 0.03);
    path.cubicTo(size.width * 0.36, size.height * 0.03, size.width * 0.36,
        size.height * 0.03, size.width * 0.36, size.height * 0.03);
    path.cubicTo(size.width * 0.36, size.height * 0.03, size.width * 0.36,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    canvas.drawPath(path, paint);

    // Path number 34

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.51, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.03, size.width * 0.51, size.height * 0.03);
    path.cubicTo(size.width * 0.51, size.height * 0.03, size.width * 0.51,
        size.height * 0.03, size.width * 0.51, size.height * 0.03);
    path.cubicTo(size.width * 0.51, size.height * 0.03, size.width * 0.51,
        size.height * 0.03, size.width * 0.51, size.height * 0.03);
    path.cubicTo(size.width * 0.51, size.height * 0.03, size.width * 0.51,
        size.height * 0.03, size.width * 0.51, size.height * 0.03);
    path.cubicTo(size.width * 0.51, size.height * 0.03, size.width * 0.51,
        size.height * 0.03, size.width * 0.51, size.height * 0.03);
    path.cubicTo(size.width * 0.51, size.height * 0.03, size.width * 0.51,
        size.height * 0.03, size.width * 0.51, size.height * 0.03);
    path.cubicTo(size.width * 0.51, size.height * 0.03, size.width * 0.51,
        size.height * 0.03, size.width * 0.51, size.height * 0.03);
    path.cubicTo(size.width * 0.51, size.height * 0.03, size.width * 0.51,
        size.height * 0.03, size.width * 0.51, size.height * 0.03);
    path.cubicTo(size.width * 0.51, size.height * 0.03, size.width * 0.51,
        size.height * 0.03, size.width * 0.51, size.height * 0.03);
    path.cubicTo(size.width * 0.51, size.height * 0.03, size.width * 0.51,
        size.height * 0.03, size.width / 2, size.height * 0.03);
    path.cubicTo(size.width / 2, size.height * 0.03, size.width / 2,
        size.height * 0.03, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.03, size.width / 2, size.height * 0.03);
    path.cubicTo(size.width / 2, size.height * 0.03, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width / 2, size.height * 0.04, size.width / 2,
        size.height * 0.04, size.width / 2, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.04, size.width * 0.51, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.04, size.width * 0.51, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.04, size.width * 0.51, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.04, size.width * 0.51, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.04, size.width * 0.51, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.04, size.width * 0.51, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.04, size.width * 0.51, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.04, size.width * 0.51, size.height * 0.04);
    path.cubicTo(size.width * 0.51, size.height * 0.04, size.width * 0.51,
        size.height * 0.04, size.width * 0.51, size.height * 0.04);
    canvas.drawPath(path, paint);

    // Path number 35

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.47, size.height * 0.01, size.width * 0.47,
        size.height * 0.01, size.width * 0.47, size.height * 0.01);
    path.cubicTo(size.width * 0.47, size.height * 0.01, size.width * 0.47,
        size.height * 0.01, size.width * 0.47, size.height * 0.01);
    path.cubicTo(size.width * 0.47, size.height * 0.01, size.width * 0.47,
        size.height * 0.01, size.width * 0.47, size.height * 0.01);
    path.cubicTo(size.width * 0.47, size.height * 0.01, size.width * 0.47,
        size.height * 0.01, size.width * 0.47, size.height * 0.01);
    path.cubicTo(size.width * 0.47, size.height * 0.01, size.width * 0.47,
        size.height * 0.01, size.width * 0.47, size.height * 0.01);
    path.cubicTo(size.width * 0.47, size.height * 0.01, size.width * 0.47,
        size.height * 0.01, size.width * 0.47, size.height * 0.01);
    path.cubicTo(size.width * 0.47, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    path.cubicTo(size.width * 0.48, size.height * 0.01, size.width * 0.48,
        size.height * 0.01, size.width * 0.48, size.height * 0.01);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
