import 'package:flutter/material.dart';
import 'package:calculator/Widgets/app_buttons.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

// class CalculatorNumberPad extends StatefulWidget {
//   final int crossAxisCount;
//   final ValueChanged<String> onPressed;

//   const CalculatorNumberPad({
//     Key? key,
//     required this.crossAxisCount,
//     required this.onPressed,
//   }) : super(key: key);

//   @override
//   State<CalculatorNumberPad> createState() => _CalculatorNumberPadState();
// }

// class _CalculatorNumberPadState extends State<CalculatorNumberPad> {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutGrid(
//       // set some flexible track sizes based on the crossAxisCount
//       columnSizes: widget.crossAxisCount == 2 ? [1.fr, 1.fr] : [1.fr],
//       // set all the row sizes to auto (self-sizing height)
//       rowSizes: widget.crossAxisCount == 2
//           ? const [auto, auto]
//           : const [auto, auto, auto, auto],
//       rowGap: 40, // equivalent to mainAxisSpacing
//       columnGap: 24, // equivalent to crossAxisSpacing
//       // note: there's no childAspectRatio
//       children: [
//         // render all the cards with *automatic child placement*
//         for (var i = 0; i < 10; i++)
//           AppButtons(
//             foregroundColor: Colors.white,
//             backgroundColor: Colors.red,
//             borderColor: Colors.orange,
//             text: i.toString(),
//             width: 90,
//             height: 90,
//             borderRadius: 30,
//             onPressed: () {
//               widget.onPressed(i.toString());
//               print("Hey");
//             },
//           ),
//       ],
//     );
//   }
// }

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
  int size = 75;
  @override
  Widget build(BuildContext context) {
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
                width: size.toDouble(),
                height: size.toDouble(),
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
                width: size.toDouble(),
                height: size.toDouble(),
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
                width: size.toDouble(),
                height: size.toDouble(),
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
                width: size.toDouble(),
                height: size.toDouble(),
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
                  width: size.toDouble(),
                  height: size.toDouble(),
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
                width: size.toDouble(),
                height: size.toDouble(),
                borderRadius: 20,
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
                  width: size.toDouble(),
                  height: size.toDouble(),
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
                width: size.toDouble(),
                height: size.toDouble(),
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
                  width: size.toDouble(),
                  height: size.toDouble(),
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
                width: size.toDouble(),
                height: size.toDouble(),
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
                width: (size + 10).toDouble(),
                height: size.toDouble(),
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
                width: size.toDouble(),
                height: size.toDouble(),
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
                  width: size.toDouble(),
                  height: size.toDouble(),
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
