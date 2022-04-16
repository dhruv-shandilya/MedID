import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';
import 'package:med_app/utils/variables.dart';
import 'package:med_app/widgets/medcard.dart';
import 'package:med_app/widgets/medTextInput.dart';
import 'package:med_app/widgets/gradButton.dart';

void acceptEmerID(String? ID) {
  emerID = ID;
}

class EnterID extends StatefulWidget {
  const EnterID({Key? key}) : super(key: key);

  @override
  State<EnterID> createState() => _EnterIDState();
}

class _EnterIDState extends State<EnterID> {
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
                        "Enter Patient ID",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      textInput(
                          onSubmitted: acceptEmerID,
                          hintText: "Emergency ID"), //for userID
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: GradButton(
                              text: "Submit",
                              widthFrac: 0.4,
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/toDisplayInfo');
                            },
                          ),
                        ],
                      ),
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
