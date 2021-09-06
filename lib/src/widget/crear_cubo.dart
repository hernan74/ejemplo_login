import 'package:flutter/material.dart';


class CuboConAngulo extends StatelessWidget {
  final double opacidad;
  final double size;
  final double posicionTop;
  final double posicionleft;
  final double angle;
  const CuboConAngulo({
    Key key,
    this.opacidad,
    this.size,
    this.posicionTop,
    this.posicionleft, this.angle=180,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: posicionTop,
      left: posicionleft,
      child: Transform.rotate(
        angle: angle,
        child: CrearCubo(
          size: size,
          color: Color(0xff7546F7).withOpacity(opacidad),
        ),
      ),
    );
  }
}


class CrearCubo extends StatelessWidget {
  final double size;
  final Color color;
  final Widget child;

  const CrearCubo({Key key, this.size, this.color, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
