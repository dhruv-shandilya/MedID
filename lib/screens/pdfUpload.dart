import 'package:flutter/material.dart';
import 'package:med_app/utils/constants.dart';

class PdfUpload extends StatefulWidget {
  const PdfUpload({Key? key}) : super(key: key);

  @override
  State<PdfUpload> createState() => _PdfUploadState();
}

class _PdfUploadState extends State<PdfUpload> {
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
                      child: Align(
                        alignment: Alignment(0, 0),
                        child: Text(
                          "Medical PDFs",
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
                      child: ListView(),
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
}
