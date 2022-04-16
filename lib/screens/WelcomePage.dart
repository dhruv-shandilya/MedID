import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:med_app/utils/constants.dart';
import 'package:med_app/utils/variables.dart';
import 'package:med_app/widgets/medcard.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to MedID",
                  style: TextStyle(
                      color: kBackground,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ), //Appname
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "A quick and easy access to all your medical files",
                  style: TextStyle(
                      color: kBackground,
                      fontSize: 18,
                      fontWeight: FontWeight.w200),
                ),
                Text(
                  "on a single device.",
                  style: TextStyle(
                      color: kBackground,
                      fontSize: 18,
                      fontWeight: FontWeight.w200),
                ),
              ],
            ), //tagline
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Select your user profile",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: kBackground),
                ),
              ],
            ), //select your user
            MedCard(
              frac: 0.25,
              chil: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Row(
                      children: [
                        SizedBox(width: 35),
                        Icon(
                          FontAwesomeIcons.briefcaseMedical,
                          size: 45,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 25),
                        Text(
                          "Doctor",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    onTap: () {
                      doc = true;
                      if (log == true) {
                        Navigator.pushNamed(context, '/toLogin');
                      } else {
                        Navigator.pushNamed(context, '/toDocVerifi');
                      }
                    },
                  ), //for doctor row
                  GestureDetector(
                    child: Row(
                      children: [
                        SizedBox(width: 35),
                        Icon(
                          FontAwesomeIcons.hospitalUser,
                          size: 45,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 25),
                        Text(
                          "Patient",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    onTap: () {
                      doc = false;
                      if (log == true) {
                        Navigator.pushNamed(context, '/toLogin');
                      } else {
                        Navigator.pushNamed(context, '/toPatientSignUp');
                      }
                    },
                  ), //for patient row
                ],
              ),
            ), //to pick which sign in
          ],
        ),
        decoration: BoxDecoration(
          gradient: backGrad,
        ),
      ),
    );
  }
}
