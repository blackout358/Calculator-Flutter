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
  double roundTo(double value, double precision) =>
      (value * precision).round() / precision;

  void updateValue(String value) {
    switch (value) {
      case "CLEAR":
        setState(() {
          equationBox = "";
        });

      case "DELETE":
        if (equationBox.isNotEmpty) {
          setState(() {
            equationBox = equationBox.substring(0, equationBox.length - 1);
          });
        }
      case "EQUALS":
        try {
          setState(() {
            // answerBox = (MathNodeExpression.fromString(equationBox)
            //         .calc(MathVariableValues.none))
            //     .toString();

            /* 
            Kinda fix if you divide by to big number it returns 0
            Rest of operations look ugly af as they are followed by $.0*20
            */

            answerBox = ((MathNodeExpression.fromString(equationBox)
                        .calc(MathVariableValues.none))
                    .toDouble())
                .toStringAsFixed(20);

            // answerBox = roundTo(
            //         MathNodeExpression.fromString(equationBox)
            //             .calc(MathVariableValues.none)
            //             .toDouble(),
            //         (equationBox.length).toDouble())
            //     .toString();
            // answerBox = roundTo(0.3 - 0.2, 10).toString();

            // answerBox = ((MathNodeExpression.fromString(equationBox)
            //                     .calc(MathVariableValues.none) *
            //                 100)
            //             .round() /
            //         100)
            //     .toString();
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
