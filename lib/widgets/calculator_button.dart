// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;

  const CalculatorButton(
      {super.key,
      required this.text,
      required this.fillColor,
      required this.textColor,
      required this.textSize,
      required this.callBack});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: SizedBox(
            height: 70.0,
            width: 70.0,
            child: ElevatedButton(
              onPressed: () => callBack(text),
              style: ElevatedButton.styleFrom(
                // shadowColor: Color(),
                primary: Color(fillColor),
                onPrimary: Color(textColor),
                elevation: 20,
                shadowColor: Color(0xff000000),

                textStyle: TextStyle(
                  fontFamily: GoogleFonts.rubik().fontFamily,
                  fontStyle: FontStyle.normal,
                  fontSize: textSize,
                ),

                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
              ),
              child: Text(
                text,
              ),
            )));
  }
}
