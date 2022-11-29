import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Smile 1",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          child: CustomPaint(
            size: const Size(300, 300),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap=StrokeCap.round
      ..strokeWidth = 4;
    // canvas.drawLine(
    //   Offset(size.width/2, size.height/2),
    //   Offset(size.width, size.height/2),
    //   paint,
    // );

    // canvas.drawRect(
    // Rect.fromCenter(center: Offset(size.width/2,size.height/2), width: 100, height: 100)
    // , paint);.

    // canvas.drawCircle(
    //     Offset(size.width/2,size.height/2),
    //     100,
    //     paint);

    // var rect=const Offset(20, 0) & const Size(100, 100);
    // const startAngle=0.0;
    // const sweepAngle=1.5*pi/3;
    // const useCenter=true;
    //
    // canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
    //
    // const points=[
    //   Offset(100, 240),
    //   Offset(50, 100),
    //   Offset(200, 75),
    //   Offset(100, 240),
    //   Offset(50, 100),
    //   Offset(200, 75),
    // ];
    // canvas.drawPoints(PointMode.lines, points, paint);

    // var path=Path();
    // path.moveTo(20, size.height/2);
    // path.lineTo(size.width/10, size.height/2);
    // path.lineTo(size.width/2, size.height/2-20);
    // path.lineTo(20, size.height-20);
    // path.lineTo(20, size.height/2);
    //
    // canvas.drawPath(path, paint);

    final radius=min(size.width, size.height)/2;
    final center=Offset(size.width/2, size.height/2);
    
    canvas.drawCircle(center, radius, paint);

    canvas.drawArc(Rect.fromCenter(center: center, width: radius+40, height: radius+40), 0, pi, false, paint);

    canvas.drawCircle(Offset(center.dx-radius/3,center.dy-radius/3), 15, paint);
    canvas.drawCircle(Offset(center.dx-radius/3+100,center.dy-radius/3), 15, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
