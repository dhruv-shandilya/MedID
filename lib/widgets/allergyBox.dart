import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:med_app/utils/constants.dart';
import 'medTextInput.dart';
import 'package:med_app/utils/variables.dart';

void allergy(String? s) {
  if (s != null) {
    allergyList.add(s);
  }
}

class AllergyBox extends StatefulWidget {
  const AllergyBox({required this.onDelete, Key? key}) : super(key: key);
  final VoidCallback onDelete;
  @override
  State<AllergyBox> createState() => _AllergyBoxState();
}

class _AllergyBoxState extends State<AllergyBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        children: [
          Row(
            children: [
              textInput(onSubmitted: allergy, hintText: ""),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: widget.onDelete,
                      child: Icon(
                        FontAwesomeIcons.trashCan,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
