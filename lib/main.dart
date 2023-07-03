import 'package:calculator/Widgets/calculator_number_pad.dart';
import 'package:calculator/Widgets/text_box.dart';
import 'package:flutter/material.dart';

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

  void updateTextBox(String value) {
    String clear = "";

    switch (value) {
      case "CLEAR":
        setState(() {
          text = clear;
        });
      case "DELETE":
        if (text.length != 0) {
          setState(
            () {
              text = text.substring(0, text.length - 1);
            },
          );
        }
      default:
        setState(() {
          text += value;
        });
    }
  }

  TextStyle myTextStyle = const TextStyle(
    fontSize: 40,
  );

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
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = "";
                });
              },
              child: Text("Reset", style: myTextStyle),
            ),
            Spacer(),
            TextBox(text: text),
            // Spacer(),
            CalculatorNumberPad(
              onPressed: (String value) {
                updateTextBox(value);
              },
            ),
            SizedBox(
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
