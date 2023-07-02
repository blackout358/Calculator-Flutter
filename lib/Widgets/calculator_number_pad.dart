import 'package:flutter/material.dart';
import 'package:calculator/Widgets/app_buttons.dart';

class CalculatorNumberPad extends StatefulWidget {
  final VoidCallback onPressed;
  String textBox;
  CalculatorNumberPad(
      {super.key, required this.textBox, required this.onPressed});

  @override
  State<CalculatorNumberPad> createState() => _CalculatorNumberPadState();
}

class _CalculatorNumberPadState extends State<CalculatorNumberPad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(24),
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      height: (MediaQuery.of(context).size.width + 70),
      alignment: Alignment.bottomCenter,
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
                width: 90,
                height: 90,
                borderRadius: 30,
                onPressed: () {
                  print("Hey");
                },
              ),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "AC",
                width: 90,
                height: 90,
                borderRadius: 30,
                onPressed: () {
                  print("Hey");
                },
              ),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "AC",
                width: 90,
                height: 90,
                borderRadius: 30,
                onPressed: () {
                  print("Hey");
                },
              ),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "AC",
                width: 90,
                height: 90,
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
                  width: 90,
                  height: 90,
                  borderRadius: 30,
                  onPressed: () {
                    setState(
                      () {
                        widget.textBox = "";
                      },
                    );
                  },
                );
              }),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                borderColor: Colors.teal,
                text: "×",
                width: 90,
                height: 90,
                borderRadius: 20,
                onPressed: () {
                  setState(
                    () {
                      widget.textBox = "";
                    },
                  );
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
                  width: 90,
                  height: 90,
                  borderRadius: 30,
                  onPressed: () {
                    setState(
                      () {
                        widget.textBox = "";
                      },
                    );
                  },
                );
              }),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "-",
                width: 90,
                height: 90,
                borderRadius: 30,
                onPressed: () {
                  setState(
                    () {
                      widget.textBox = "";
                    },
                  );
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
                  width: 90,
                  height: 90,
                  borderRadius: 30,
                  onPressed: () {
                    setState(
                      () {
                        widget.textBox = "";
                      },
                    );
                  },
                );
              }),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.orange,
                text: "+",
                width: 90,
                height: 90,
                borderRadius: 30,
                onPressed: () {
                  setState(
                    () {
                      widget.textBox = "";
                    },
                  );
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
                width: 190,
                height: 90,
                borderRadius: 30,
                onPressed: () {
                  setState(
                    () {
                      widget.textBox = "";
                    },
                  );
                },
              ),
              AppButtons(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                borderColor: Colors.cyanAccent,
                text: ".",
                width: 90,
                height: 90,
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
                  width: 90,
                  height: 90,
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