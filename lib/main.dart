import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String operator;
  void btnFunction(String btnValue) {
    print(btnValue);
    if (btnValue == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnValue == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnValue == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnValue == "<-") {
      if (textToDisplay.isNotEmpty) {
        res = textToDisplay.substring(0, textToDisplay.length - 1);
      }
    } else if (btnValue == "+" ||
        btnValue == "-" ||
        btnValue == "X" ||
        btnValue == "/") {
      if (textToDisplay.isNotEmpty) {
        firstNum = int.parse(textToDisplay);
        res = '';
        operator = btnValue;
      }
    } else if (btnValue == '=') {
      secondNum = int.parse(textToDisplay);
      if (operator == "+") {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operator.toString() + secondNum.toString();
      }
      if (operator == "-") {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operator.toString() + secondNum.toString();
      }
      if (operator == "X") {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operator.toString() + secondNum.toString();
      }
      if (operator == "/") {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operator.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnValue).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Calculator"),
            centerTitle: true,
          ),
          backgroundColor: Color(0xff285278),
          body: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  alignment: Alignment(1.0, 1.0),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(fontSize: 20, color: Color(0x66ffffff))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  alignment: Alignment(1.0, 1.0),
                  child: Text(
                    textToDisplay,
                    style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(fontSize: 30, color: Color(0xffffffff))),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "AC",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 24,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "C",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 25,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "<-",
                    fillColor: 0xfff4d160,
                    textColor: 0xff000000,
                    textSize: 30,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "/",
                    fillColor: 0xfff4d160,
                    textColor: 0xff000000,
                    textSize: 25,
                    callBack: btnFunction,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "9",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "8",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "7",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "X",
                    fillColor: 0xfff4d160,
                    textColor: 0xff000000,
                    textSize: 25,
                    callBack: btnFunction,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "6",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "5",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "4",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "-",
                    fillColor: 0xfff4d160,
                    textColor: 0xff000000,
                    textSize: 25,
                    callBack: btnFunction,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "3",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "2",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "1",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "+",
                    fillColor: 0xfff4d160,
                    textColor: 0xff000000,
                    textSize: 25,
                    callBack: btnFunction,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "+/-",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "0",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "00",
                    fillColor: 0xff8ac4d0,
                    textColor: 0xff000000,
                    textSize: 20,
                    callBack: btnFunction,
                  ),
                  CalculatorButton(
                    text: "=",
                    fillColor: 0xfff4d160,
                    textColor: 0xff000000,
                    textSize: 50,
                    callBack: btnFunction,
                  ),
                ],
              ),
            ]),
          )),
    );
  }
}
