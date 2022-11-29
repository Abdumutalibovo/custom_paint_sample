import 'dart:math';
import 'package:flutter/material.dart';

class VeryGoodSticker extends StatelessWidget {
  const VeryGoodSticker({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Smile 1",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
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
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeCap=StrokeCap.round
      ..strokeWidth = 10;

    var eyesPaint=Paint()
    ..color=Colors.green
    ..style=PaintingStyle.fill
    ..strokeWidth=10;

    final radius=min(size.width, size.height)/2;
    final center=Offset(size.width/2, size.height/2);

    canvas.drawCircle(center, radius, paint);

    canvas.drawArc(Rect.fromCenter(center: center, width: radius, height: radius), 0, pi, false, paint);

    canvas.drawCircle(Offset(center.dx-radius/3,center.dy-radius/3), 15, eyesPaint);
    canvas.drawCircle(Offset(center.dx-radius/3+100,center.dy-radius/3), 15, eyesPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
