import 'dart:math';
import 'package:flutter/material.dart';

class GoodSticker extends StatelessWidget {
  const GoodSticker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              child: CustomPaint(
                size: const Size(200, 200),
                painter: MyPainter(),
              ),
            ),
            SizedBox(height: 50,),
            Text("Yaxshi",style: TextStyle(fontSize: 26),)
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint=Paint()
        ..color=Colors.indigo
        ..strokeWidth=10
        ..style=PaintingStyle.stroke;

    var eyesPaint=Paint()
      ..color=Colors.indigo
      ..style=PaintingStyle.fill
      ..strokeWidth=10;

    var mouthPaint=Paint()
    ..color=Colors.indigo
    ..style=PaintingStyle.fill
    ..strokeWidth=10;

    final radius=min(size.width, size.height)/2;
    final center=Offset(size.width/2, size.height/2);

    canvas.drawCircle(center, radius, paint);

    canvas.drawCircle(Offset(center.dx-radius/3,center.dy-radius/8), 10, eyesPaint);
    canvas.drawCircle(Offset(center.dx-radius/3+size.height/3,center.dy-radius/8), 10, eyesPaint);

    canvas.drawLine(
        Offset(size.width/3, size.height*0.7),
        Offset(size.height*2/3, size.height*0.7),
        mouthPaint
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=>true;

}
