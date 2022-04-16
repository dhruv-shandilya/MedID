import 'package:flutter/material.dart';
import 'package:med_app/screens/bezier.dart';
import '../../utils/constants.dart';
import '../../utils/variables.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "MEDId",
                    style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Medical information just a click away",
                    style: TextStyle(fontSize: 18.0, color: kPrimaryColor),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        "images/download.jpg",
                        width: MediaQuery.of(context).size.width * 0.9,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ],
          ), //background only
          Bezier(), //bezier background only
          Positioned.fill(
            child: Align(
              alignment: Alignment(0, 0.56),
              child: GestureDetector(
                child: Container(
                  height: 45.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF135465),
                        Color(0xFF1F8288),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: kBackground,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                onTap: () {
                  log = true;
                  Navigator.pushNamed(context, '/toWelcome');
                },
              ),
            ),
          ), //Login Button
          Positioned.fill(
            child: Align(
              alignment: Alignment(0, 0.7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 18,
                      color: kPrimaryColor,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.underline,
                        color: kPrimaryColor,
                      ),
                    ),
                    onTap: () {
                      log = false;
                      Navigator.pushNamed(context, '/toWelcome');
                    },
                  ),
                ],
              ),
            ),
          ), //Sign up waali line
        ],
      ),
    );
  }
}
