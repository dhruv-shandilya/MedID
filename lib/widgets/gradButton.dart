import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';

class GradButton extends StatefulWidget {
  double heightFrac = 0.057;
  double widthFrac = 0.572;
  String text = "";
  GradButton({double? heightFrac, double? widthFrac, String? text}) {
    this.heightFrac = heightFrac ?? 0.057;
    this.widthFrac = widthFrac ?? 0.572;
    this.text = text ?? "";
  }
  @override
  State<GradButton> createState() => _GradButtonState();
}

class _GradButtonState extends State<GradButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * widget.widthFrac,
      height: MediaQuery.of(context).size.height * widget.heightFrac,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF186D72),
            Color(0xFF278D93),
          ],
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: kBackground,
          ),
        ),
      ),
    );
  }
}
