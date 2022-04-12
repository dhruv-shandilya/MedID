import 'package:flutter/material.dart';
import 'package:med_app/screens/WelcomePage.dart';
import 'package:med_app/screens/patient_signUp.dart';
import 'screens/intro_page.dart';
import 'screens/bezier.dart';
import 'utils/constants.dart';
import 'screens/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PatientSignUp(),
    );
  }
}
