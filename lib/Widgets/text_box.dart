import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String text;
  final Color startColour;
  final Color endColour;
  final Color textColour;
  final int height;
  TextBox(
      {super.key,
      required this.text,
      required this.startColour,
      required this.endColour,
      required this.height,
      required this.textColour});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          // color: backgroundColor,
          gradient: LinearGradient(
            colors: [
              startColour,
              endColour,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.tealAccent,
            width: 1.0,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColour,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
