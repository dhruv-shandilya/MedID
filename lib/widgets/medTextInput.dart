import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';

class textInput extends StatefulWidget {
  String hintText;
  void Function(String? text) onSubmitted;
  textInput({required this.onSubmitted , required this.hintText, Key? key}): super(key: key);
  @override
  State<textInput> createState() => _textInputState();
}

class _textInputState extends State<textInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: TextField(
        decoration: InputDecoration(
          fillColor: kSecondaryColor,
          filled: true,
          hintText: widget.hintText,
          border: InputBorder.none,
        ),
        onSubmitted: widget.onSubmitted,
      ),
    );
  }
}
