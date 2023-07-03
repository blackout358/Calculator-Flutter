import 'package:flutter/material.dart';
import 'package:calculator/Widgets/app_buttons.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class CalculatorNumberPad extends StatefulWidget {
  final ValueChanged<String> onPressed;
  // String textBox;
  CalculatorNumberPad({
    Key? key,
    // required this.textBox,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<CalculatorNumberPad> createState() => _CalculatorNumberPadState();
}

class _CalculatorNumberPadState extends State<CalculatorNumberPad> {
  // double size = 100;
  @override
  Widget build(BuildContext context) {
    double size = 70;
    return Container(
      // height: 300,
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      // height: (MediaQuery.of(context).size.width + 70),
      // alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "AC",
                width: size,
                height: size,
                borderRadius: 30,
                onPressed: () {
                  widget.onPressed("CLEAR");
                  print("AC");
                },
              ),
              AppButtons(
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                icon: Icons.backspace_outlined,
                text: "",
                width: size,
                height: size,
                borderRadius: 30,
                onPressed: () {
                  widget.onPressed("DELETE");
                },
              ),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "%",
                width: size,
                height: size,
                borderRadius: 30,
                onPressed: () {
                  print("%");
                },
              ),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "÷",
                width: size,
                height: size,
                borderRadius: 30,
                onPressed: () {
                  print("Hey");
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(3, (index) {
                int i = index + 7;
                return AppButtons(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  borderColor: Colors.orange,
                  text: i.toString(),
                  width: size,
                  height: size,
                  borderRadius: 30,
                  onPressed: () {
                    widget.onPressed(i.toString());
                  },
                );
              }),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                borderColor: Colors.teal,
                text: "×",
                width: size,
                height: size,
                borderRadius: 30,
                onPressed: () {
                  widget.onPressed("×");
                },
              )
            ],
          ),
          // const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(3, (index) {
                int i = index + 4;
                return AppButtons(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  borderColor: Colors.orange,
                  text: i.toString(),
                  width: size,
                  height: size,
                  borderRadius: 30,
                  onPressed: () {
                    widget.onPressed(i.toString());
                  },
                );
              }),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "-",
                width: size,
                height: size,
                borderRadius: 30,
                onPressed: () {
                  widget.onPressed("-");
                  print("Minus");
                },
              ),
            ],
          ),
          // const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(3, (index) {
                int i = index + 1;
                return AppButtons(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  borderColor: Colors.orange,
                  text: i.toString(),
                  width: size,
                  height: size,
                  borderRadius: 30,
                  onPressed: () {
                    widget.onPressed(i.toString());
                  },
                );
              }),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "+",
                width: size,
                height: size,
                borderRadius: 30,
                onPressed: () {
                  widget.onPressed("+");
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "0",
                width: size + size + 4,
                height: size,
                borderRadius: 30,
                onPressed: () {
                  widget.onPressed("0");
                },
              ),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.cyanAccent,
                text: ".",
                width: size,
                height: size,
                borderRadius: 30,
                onPressed: () {
                  print("Dot");
                },
              ),
              AppButtons(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  borderColor: Colors.cyanAccent,
                  text: "=",
                  width: size,
                  height: size,
                  borderRadius: 30,
                  onPressed: () {
                    print("Equals");
                  })
            ],
          ),
        ],
      ),
    );
  }
}
