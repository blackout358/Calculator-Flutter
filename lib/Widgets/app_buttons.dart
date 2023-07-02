import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final int borderRadius;
  final VoidCallback onPressed;
  IconData? icon;
  double width;
  double height;
  AppButtons(
      {super.key,
      required this.foregroundColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.width,
      required this.height,
      this.icon,
      required this.borderRadius,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          // color: backgroundColor,
          gradient: const LinearGradient(
            colors: [Color(0xFFFF5B94), Color(0xFF8441A4)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(borderRadius.toDouble()),
          border: Border.all(color: borderColor, width: 1.0)),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            foregroundColor: foregroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius.toDouble()))),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
