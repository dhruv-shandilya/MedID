import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:med_app/screens/WelcomePage.dart';
import 'package:med_app/screens/displayInfo.dart';
import 'package:med_app/screens/docVerification.dart';
import 'package:med_app/screens/enterID.dart';
import 'package:med_app/screens/medicalList.dart';
import 'package:med_app/screens/patient_signUp.dart';
import 'package:med_app/screens/pdf_upload.dart';
import 'package:med_app/screens/signUpComplete.dart';
import 'package:med_app/services/firebase_au.dart';
import 'package:med_app/services/firebase_db.dart';
import 'screens/intro_page.dart';
import 'screens/LoginPage.dart';
import 'screens/splash_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<fb_auth>(
          create: (_) => fb_auth(FirebaseAuth.instance),
        ),
        Provider<FirebaseDB>(
          create: (_) => FirebaseDB(FirebaseFirestore.instance,FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<fb_auth>().authStateChanges,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthenticationWrapper(),
        routes: {
          '/toIntroPage': (context) => const IntroPage(),
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
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseuser = context.watch<User?>();
    if (firebaseuser != null) {
      return const MedicalList();
    } else {
      return const IntroPage();
    }
  }
}
