// ignore: file_names
import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';
import 'package:med_app/utils/variables.dart';
import 'package:med_app/widgets/gradButton.dart';

import '../widgets/medTextInput.dart';

double gap = 20;

void acceptContact(String? a) {
  dsContact = a;
}

void acceptMedicalID(String? a) {
  dsMedicalID = a;
}

void acceptName(String? a) {
  dsName = a;
}

void acceptSurname(String? a) {
  dsSurname = a;
}

class DocVerifi extends StatelessWidget {
  const DocVerifi({Key? key}) : super(key: key);

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
                "Doctor Verification",
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
                              onSubmitted: acceptMedicalID,
                              hintText: "Medical License ID"),
                          SizedBox(
                            height: gap,
                          ),
                          textInput(
                              onSubmitted: acceptContact,
                              hintText: "Contact no."),
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
                        Navigator.pushNamed(context, '/toenterID');
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
