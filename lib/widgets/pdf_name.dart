import 'dart:io';

import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfName extends StatefulWidget {
  File file;
  PdfName({required this.file, Key? key}) : super(key: key);
  late String fileName;
  @override
  State<PdfName> createState() => _PdfNameState();
}

class _PdfNameState extends State<PdfName> {
  @override
  void initState() {
    widget.fileName = widget.file.path.split('/').last;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: MediaQuery.of(context).size.height * 0.057,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.fileName,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: kSecondaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
