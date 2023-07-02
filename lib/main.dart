import 'package:calculator/Widgets/app_buttons.dart';
import 'package:calculator/Widgets/calculator_number_pad.dart';
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
    setState(() {
      text = value;
    });
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
            SizedBox(
              height: 50,
              child: Column(
                children: [
                  Text(text),
                ],
              ),
            ),
            Spacer(),
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
