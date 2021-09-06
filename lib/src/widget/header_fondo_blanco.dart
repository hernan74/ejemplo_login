import 'package:flutter/material.dart';

class HeaderFondoBlanco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      child: CustomPaint(
        painter: _HeaderPaiter(),
      ),
    );
  }
}

class _HeaderPaiter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Tercer Dibujo
    final paint = new Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill; //stroke  fill
    paint.strokeWidth = 5;
    final path = new Path();

    path.moveTo(0, size.height * 0.695);
    path.quadraticBezierTo(size.width * 0.01, size.height*0.685,  size.width * 0.1, size.height * 0.749);
    path.quadraticBezierTo(size.width * 0.41, size.height*0.94,  size.width * 0.525, size.height * 0.845);
    path.quadraticBezierTo(size.width*0.7, size.height, size.width, size.height * 0.97);
    path.lineTo(size.width,size.height);
    path.lineTo(0, size.height);
     canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
