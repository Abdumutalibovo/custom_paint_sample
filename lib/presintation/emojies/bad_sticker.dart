import 'package:flutter/material.dart';

class BadSticker extends StatelessWidget {
  const BadSticker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              Text("Yomon",style: TextStyle(fontSize: 26),)
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
      ..color = Colors.orange
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    final mouthPaint = Paint()
      ..strokeWidth = 10
      ..color = Colors.orange
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    //eyes
    final eye1=Path();
    eye1.moveTo(60, 80);
    eye1.arcToPoint(Offset(80, 70),radius: Radius.circular(100),clockwise: false);

    final eye2=Path();
    eye2.moveTo(120, 70);
    eye2.arcToPoint(Offset(140, 80),radius: Radius.circular(50),clockwise: false);
    canvas.drawPath(eye1, mouthPaint);
    canvas.drawPath(eye2, mouthPaint);


    final mouth=Path();
    mouth.moveTo(60, 130);
    mouth.arcToPoint(Offset(130, 130),radius: Radius.circular(38),clockwise: true);

    canvas.drawPath(mouth, mouthPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}