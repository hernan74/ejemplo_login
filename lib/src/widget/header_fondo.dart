import 'package:flutter/material.dart';

class HeaderFondo extends StatelessWidget {
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
    paint.color = Color(0xff754EFC);
    paint.style = PaintingStyle.fill; //stroke  fill
    paint.strokeWidth = 5;
    final path = new Path();
    path.moveTo(size.width * 0.53, size.height * 0.85);
    path.quadraticBezierTo(size.width*0.7, size.height, size.width, size.height * 0.97);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    
    canvas.drawPath(path, paint);
    //Primer Dibujo
    final paint1 = new Paint();
    paint1.color = Color(0xff6928FF);
    paint1.style = PaintingStyle.fill; //stroke  fill
    paint1.strokeWidth = 5;
    final path1 = new Path();
    path1.moveTo(0, size.height * 0.549);
    path1.quadraticBezierTo(size.width * 0.27, size.height * 0.349,size.width * 0.4, size.height * 0.549);
    path1.quadraticBezierTo(size.width * 0.5, size.height * 0.679 , size.width * 0.6, size.height * 0.749);
    path1.quadraticBezierTo(size.width * 0.5, size.height, size.width * 0.1, size.height * 0.749);
    path1.quadraticBezierTo(size.width * 0.01, size.height*0.685, 0, size.height * 0.695);
    canvas.drawPath(path1, paint1);


    //Segundo Dibujo
    final paint2 = new Paint();
    paint2.color = Color(0xff6C3AF7);
    paint2.style = PaintingStyle.fill; //stroke  fill
    paint2.strokeWidth = 5;
    final path2 = new Path();
    path2.moveTo(0, size.height * 0.55);
    path2.quadraticBezierTo(size.width * 0.27, size.height * 0.35,size.width * 0.4, size.height * 0.55);
    path2.quadraticBezierTo(size.width * 0.5, size.height * 0.68 , size.width * 0.6, size.height * 0.75);
    path2.quadraticBezierTo(size.width * 0.85, size.height*0.9  , size.width, size.height * 0.85);
    path2.lineTo(size.width,0);
    path2.lineTo(0,0);
    canvas.drawPath(path2, paint2);


    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
