import 'package:flutter/material.dart';
import 'package:med_app/screens/WelcomePage.dart';
import 'package:med_app/screens/displayInfo.dart';
import 'package:med_app/screens/docVerification.dart';
import 'package:med_app/screens/enterID.dart';
import 'package:med_app/screens/medicalList.dart';
import 'package:med_app/screens/patient_signUp.dart';
import 'package:med_app/screens/pdf_upload.dart';
import 'package:med_app/screens/signUpComplete.dart';
import 'screens/intro_page.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroPage(),
        '/toWelcome': (context) => const Welcome(),
        '/toLogin': (context) => const Login(),
        '/toPatientSignUp': (context) => const PatientSignUp(),
        '/toSignUpComplete': (context) => const signUpComplete(),
        '/toMedicalList': (context) => const MedicalList(),
        '/toDocVerifi': (context) => const DocVerifi(),
        '/toPdfUpload': (context) => const PdfUpload(),
        '/toenterID': (context) => const EnterID(),
        '/toDisplayInfo': (context) => const DisplayInfo(),
      },
    );
  }
}
