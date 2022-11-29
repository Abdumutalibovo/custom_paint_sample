import 'dart:math';

import 'package:flutter/material.dart';

class AverageSticker extends StatelessWidget {
  const AverageSticker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                child: CustomPaint(
                  painter: MyPainter(),
                ),
              ),
              SizedBox(height: 50,),
              Text("O'rtacha",style: TextStyle(fontSize: 26),)
            ],
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final mouthpaint = Paint()
      ..strokeWidth = 10
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke;

    var eyesPaint=Paint()
      ..color=Colors.yellow
      ..style=PaintingStyle.fill
      ..strokeWidth=10;

    final radius=min(size.width, size.height)/2;
    final center=Offset(size.width/2, size.height/2);

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    //eyes

    canvas.drawCircle(Offset(center.dx-radius/3,center.dy-radius/4), 10, eyesPaint);
    canvas.drawCircle(Offset(center.dx-radius/3+size.height/3,center.dy-radius/4), 10, eyesPaint);

    final mouth=Path();
    mouth.moveTo(70, 130);
    mouth.arcToPoint(Offset(130, 130),radius: Radius.circular(100),clockwise: true);

    canvas.drawPath(mouth, mouthpaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}