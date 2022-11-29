import 'package:flutter/material.dart';
class FlagSticker extends StatelessWidget {
  const FlagSticker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: CustomPaint(
          size: const Size(200,200),
          painter: MyPainter(),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
      ..color=Colors.black
      ..strokeWidth=6
      ..style=PaintingStyle.stroke;

    canvas.drawRect(
    Rect.fromCenter(center: Offset(size.width/2,size.height/2), width: 100, height: 100)
    , paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
