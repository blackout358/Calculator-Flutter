import 'package:calculator/Widgets/calculator_number_pad.dart';
import 'package:calculator/Widgets/text_box.dart';
import 'package:flutter/material.dart';
import 'package:math_parser/math_parser.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String text = "A";
  String answer = "";

  void updateTextBox(String value) {
    String clear = "";

    switch (value) {
      case "CLEAR":
        setState(() {
          text = clear;
        });
      case "DELETE":
        if (text.isNotEmpty) {
          setState(
            () {
              text = text.substring(0, text.length - 1);
            },
          );
        }
      case "EQUALS":
        setState(() {
          print(MathNodeExpression.fromString(text).calc);
          answer = (MathNodeExpression.fromString(text).calc).toString();
        });
      default:
        setState(() {
          text += value;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dez"),
        ),
        backgroundColor: Colors.limeAccent,
        body: Column(
          children: [
            const Spacer(),
            TextBox(
                text: answer,
                startColour: Color.fromARGB(255, 100, 100, 100),
                endColour: Color.fromARGB(255, 255, 255, 255),
                height: 250,
                textColour: Colors.white),
            TextBox(
              text: text,
              startColour: Color.fromARGB(255, 91, 222, 255),
              endColour: Color.fromARGB(255, 10, 34, 173),
              height: 300,
              textColour: Colors.white,
            ),
            CalculatorNumberPad(
              onPressed: (String value) {
                updateTextBox(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
