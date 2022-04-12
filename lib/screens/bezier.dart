import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';

class Bezier extends StatefulWidget {
  const Bezier({Key? key}) : super(key: key);

  @override
  State<Bezier> createState() => _BezierState();
}

class _BezierState extends State<Bezier> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
          child: CustomPaint(
            painter: CurvePainter(),
          ),
    );
  }
}

class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = kSecondaryColor;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.667);
    path.quadraticBezierTo(size.width*0.5, size.height * 0.5833, size.width , size.height * 0.667);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
