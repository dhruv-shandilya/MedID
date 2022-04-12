import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';

class MedCard extends StatefulWidget {
  MedCard({Widget? chil,double? frac, Key? key}) : super(key: key) {
    child = chil;
    fraction=frac??0.5;
  }
  Widget? child;
  double fraction=0.5;
  @override
  State<MedCard> createState() => _MedCardState();
}

class _MedCardState extends State<MedCard> {
  @override
  Widget build(BuildContext cont) {
    return Container(
      height: MediaQuery.of(context).size.height*widget.fraction,
      margin: const EdgeInsets.all(15.0),
      child: Card(
        child: widget.child,
        shadowColor: Colors.black,
        color: kBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
