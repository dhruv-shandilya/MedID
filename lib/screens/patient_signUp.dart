import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';

class PatientSignUp extends StatelessWidget {
  const PatientSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "MedId",
              style: TextStyle(color: kBackground, fontSize: 30),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.88,
              decoration: BoxDecoration(
                color: kBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: backGrad,
        ),
      ),
    );
  }
}
