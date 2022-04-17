// ignore: file_names
import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';
import 'package:med_app/utils/variables.dart';
import 'package:med_app/widgets/gradButton.dart';

import '../widgets/medTextInput.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:med_app/services/firebase_db.dart';

double gap = 20;

void acceptEmailID(String? a) {
  psEmailID = a;
}

void acceptName(String? a) {
  psName = a;
}

void acceptSurname(String? a) {
  psSurname = a;
}

class PatientSignUp extends StatelessWidget {
  const PatientSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 1,
              ),
              Text(
                "MedId",
                style: TextStyle(color: kBackground, fontSize: 30),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.850,
                decoration: BoxDecoration(
                  color: kBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Align(
                        alignment: Alignment(0, 0),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.60,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: ListView(
                        children: [
                          textInput(onSubmitted: acceptName, hintText: "Name"),
                          SizedBox(
                            height: gap,
                          ),
                          textInput(
                              onSubmitted: acceptSurname, hintText: "Surname"),
                          SizedBox(
                            height: gap,
                          ),
                          textInput(
                              onSubmitted: acceptEmailID, hintText: "Email ID"),
                          SizedBox(
                            height: gap,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Password",
                                fillColor: kSecondaryColor,
                                filled: true,
                                border: InputBorder.none,
                              ),
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              onSubmitted: (String? a) {
                                psPassword = a;
                              },
                            ),
                          ),
                          SizedBox(
                            height: gap,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Confirm password",
                                fillColor: kSecondaryColor,
                                filled: true,
                                border: InputBorder.none,
                              ),
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              onSubmitted: (String? a) {
                                psConfirmPassword = a;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: GradButton(
                        text: "Submit",
                      ),
                      onTap: () {
                        Provider.of<FirebaseDB>(context, listen: false)
                            .register(
                                email: dsEmailID!,
                                password: dsPassword!,
                                isDoctor: doc,
                                name: dsName!,
                                surname: dsSurname!);
                        Navigator.pushNamed(context, '/toSignUpComplete');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            gradient: backGrad,
          ),
        ),
      ),
    );
  }
}
