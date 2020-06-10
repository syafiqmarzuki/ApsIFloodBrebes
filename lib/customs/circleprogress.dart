import 'dart:math';
import 'dart:core';

import 'package:flutter/material.dart';

class CircleProgress extends CustomPainter {
  double value;
  bool isTemp;
  final Color color;

  CircleProgress(this.value, this.isTemp, this.color);

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var paint = new Paint();
    paint 
    ..strokeWidth = size.width / 25
    ..style = PaintingStyle.stroke;


     int maximumValue =
         isTemp ? 50 : 100; // Temp's max is 50, Humidity's max is 100

     Paint outerCircle = Paint()
       ..strokeWidth = 14
       ..color = Colors.grey
       ..style = PaintingStyle.stroke;

     Paint sungaiR = Paint()
       ..strokeWidth = 14
       ..color = Colors.red
       ..style = PaintingStyle.stroke
       ..strokeCap = StrokeCap.round;

     Paint debitR = Paint()
       ..strokeWidth = 14
       ..style = PaintingStyle.stroke
       ..style = PaintingStyle.stroke
       ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2) - 14;
    canvas.drawCircle(center, radius, outerCircle);

    double angle = 2 * pi * (value / maximumValue);
    //  Rect rect = new Offset(0.0, 0.0) & size;
    //  for (int i = 0; i < 36; i++){
    //    canvas.drawArc(
    //      new Offset(0.0, 0.0) & new Size(size.width, size.width),
    //      (-90.0 + i * 10) * 0.0174533, 8 * 0.0174533, false,
    //      paint..color = color);
    // }

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        angle, false, isTemp ? sungaiR : debitR);
  }
}