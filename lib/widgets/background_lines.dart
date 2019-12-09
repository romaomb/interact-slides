import 'package:flutter/material.dart';

class BackgroundLines extends StatelessWidget {
  const BackgroundLines() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: CustomPaint(
              size: Size(300, 300),
              painter: _BackgroundLinesPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundLinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = 30.0;

    final firstLineP1 = Offset(-10, 200);
    final firstLineP2 = Offset(80, -20);
    final firstLinePaint = Paint()
      ..color = Color(0xFF02569B)
      ..strokeWidth = strokeWidth;

    final secondLineP1 = Offset(-10, 225);
    final secondLineP2 = Offset(140, -20);
    final secondLinePaint = Paint()
      ..color = Color(0xFF0175C2)
      ..strokeWidth = strokeWidth;

    final thirdLineP1 = Offset(-10, 250);
    final thirdLineP2 = Offset(200, -20);
    final thirdLinePaint = Paint()
      ..color = Color(0xFF13B9FD)
      ..strokeWidth = strokeWidth;

    canvas.drawLine(firstLineP1, firstLineP2, firstLinePaint);
    canvas.drawLine(secondLineP1, secondLineP2, secondLinePaint);
    canvas.drawLine(thirdLineP1, thirdLineP2, thirdLinePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
