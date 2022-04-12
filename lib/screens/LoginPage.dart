import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';
import '../widgets/medcard.dart';
import '../widgets/medTextInput.dart';
import 'package:med_app/utils/variables.dart';

void acceptUserID(String? a) {
  UserID = a;
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "MEDId",
          style: TextStyle(color: kSecondaryColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: MedCard(
                  chil: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      textInput(
                          onSubmitted: acceptUserID,
                          hintText: "User ID"), //for userID
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
                            password = a;
                          },
                        ),
                      ), //for password
                      Row(
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
                              //link this to signUp page
                            },
                          ),
                        ],
                      ), //signup waali line
                    ],
                  ),
                ),
              ), //login card
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: backGrad,
        ),
      ), //for background
    );
  }
}