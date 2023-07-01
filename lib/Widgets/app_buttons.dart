import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final int borderRadius;
  IconData? icon;
  double size;
  AppButtons(
      {super.key,
      required this.foregroundColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.size,
      this.icon,
      required this.borderRadius});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius.toDouble()),
          border: Border.all(color: borderColor, width: 1.0)),
      child: ElevatedButton(
        onPressed: () {
          print("Pressed");
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            foregroundColor: foregroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
