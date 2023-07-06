import 'package:flutter/material.dart';
import 'text_box.dart';
import 'Calculations.dart';

class CalculatorTextBoxWidget extends StatefulWidget {
  String equationBox;
  String answerBox;
  CalculatorTextBoxWidget({
    super.key,
    required this.equationBox,
    required this.answerBox,
  });
  @override
  State<CalculatorTextBoxWidget> createState() =>
      _CalculatorTextBoxWidgetState();
}

class _CalculatorTextBoxWidgetState extends State<CalculatorTextBoxWidget> {
  // String setEquationBox(String value) {
  //   if (value != "EQUALS") {
  //     return Calculations.calculationInterface(value, equationBox);
  //   } else {
  //     return Calculations.calculationInterface(value, answerBox);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextBox(
          text: widget.equationBox,
          startColour: Color.fromARGB(255, 91, 222, 255),
          endColour: Color.fromARGB(255, 10, 34, 173),
          height: 200,
          textColour: Colors.white,
        ),
        TextBox(
          text: widget.answerBox,
          startColour: Color.fromARGB(255, 100, 100, 100),
          endColour: Color.fromARGB(255, 255, 255, 255),
          height: 150,
          textColour: const Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    );
  }
}
