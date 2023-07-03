import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String text;
  TextBox({super.key, required this.text});

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
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 91, 222, 255),
              Color.fromARGB(255, 10, 34, 173)
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
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
