import 'package:calculator/Widgets/calculator_number_pad.dart';
import 'package:calculator/Widgets/calculator_text_boxes.dart';
import 'package:calculator/Widgets/text_box.dart';
import 'package:flutter/material.dart';
import 'Widgets/Calculations.dart';
import 'Widgets/text_boxes_and_num_pad.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String text = "";

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
            TextBoxAndNumPad(),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
