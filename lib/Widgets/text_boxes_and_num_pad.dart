import 'package:flutter/material.dart';
import 'package:calculator/Widgets/calculator_number_pad.dart';
import 'package:calculator/Widgets/calculator_text_boxes.dart';
import 'package:math_parser/math_parser.dart';

class TextBoxAndNumPad extends StatefulWidget {
  const TextBoxAndNumPad({super.key});

  @override
  State<TextBoxAndNumPad> createState() => _TextBoxAndNumPadState();
}

class _TextBoxAndNumPadState extends State<TextBoxAndNumPad> {
  String equationBox = "";
  String answerBox = "";

  void updateValue(String value) {
    switch (value) {
      case "CLEAR":
        setState(() {
          equationBox = "";
        });

      case "DELETE":
        if (equationBox.isNotEmpty) {
          setState(() {
            equationBox.substring(0, equationBox.length - 1);
          });
        }
      case "EQUALS":
        try {
          setState(() {
            answerBox = (MathNodeExpression.fromString(equationBox)
                    .calc(MathVariableValues.none))
                .toString();
          });
        } on Exception catch (_) {
          setState(() {
            answerBox = "Error";
          });
        }
      default:
        setState(() {
          equationBox += value;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          CalculatorTextBoxWidget(
            answerBox: answerBox,
            equationBox: equationBox,
          ),
          const Spacer(),
          CalculatorNumberPad(
            onPressed: (String value) {
              updateValue(value);
            },
          ),
        ],
      ),
    );
  }
}
