import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:med_app/utils/constants.dart';
import 'package:med_app/utils/variables.dart';
import 'package:med_app/widgets/gradButton.dart';
import 'package:med_app/widgets/allergyBox.dart';

class MedicalList extends StatefulWidget {
  const MedicalList({Key? key}) : super(key: key);

  @override
  State<MedicalList> createState() => _MedicalListState();
}

class _MedicalListState extends State<MedicalList> {
  late List<Widget> aList;

  @override
  void initState() {
    aList = [AllergyBox(onDelete: () => deleteItem(0))];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: backGrad,
          ),
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
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.plus,
                              color: kBackground,
                              size: 30,
                            ),
                            Text(
                              "Allergies",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  aList.add(AllergyBox(
                                    onDelete: () =>
                                        deleteItem(aList.length - 1),
                                  ));
                                });
                                debugPrint(allergyList.toString());
                              },
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: kPrimaryColor,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.60,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: ListView.builder(
                        itemCount: aList.length,
                        itemBuilder: ((context, index) => aList[index]),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: GradButton(
                            heightFrac: 0.07,
                            widthFrac: 0.40,
                            text: "Submit",
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void deleteItem(int index) {
    if (aList.length != 1) {
      setState(() {
        aList.removeAt(index);
      });
    }
  }
}
