import 'package:calculator/Widgets/calculator_number_pad.dart';
import 'package:calculator/Widgets/text_box.dart';
import 'package:flutter/material.dart';
import "Calculations.dart";

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
                textColour: const Color.fromARGB(255, 0, 0, 0)),
            TextBox(
              text: text,
              startColour: Color.fromARGB(255, 91, 222, 255),
              endColour: Color.fromARGB(255, 10, 34, 173),
              height: 300,
              textColour: Colors.white,
            ),
            CalculatorNumberPad(
              onPressed: (String value) {
                value != "EQUALS"
                    ? setState(
                        () {
                          text = Calculations.calculationInterface(value, text);
                        },
                      )
                    : setState(
                        () {
                          answer =
                              Calculations.calculationInterface(value, text);
                        },
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
