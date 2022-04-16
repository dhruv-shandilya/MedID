import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';
import 'package:med_app/widgets/gradButton.dart';

class signUpComplete extends StatefulWidget {
  const signUpComplete({Key? key}) : super(key: key);

  @override
  State<signUpComplete> createState() => _signUpCompleteState();
}

class _signUpCompleteState extends State<signUpComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: kBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign up complete",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: kPrimaryColor),
            ),
            Image(
              image: AssetImage("images/envelope.jpg"),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Text(
                "Would you like to set up your Medical profile now?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 1,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/toPdfUpload');
                  },
                  child: Text(
                    "No",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/toMedicalList');
                  },
                  child: GradButton(
                    heightFrac: 0.0573,
                    widthFrac: 0.3154,
                    text: "Yes",
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
