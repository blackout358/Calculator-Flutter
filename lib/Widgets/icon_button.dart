import 'package:flutter/material.dart';

class IconAppButtons extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final Color borderColor;
  final int borderRadius;
  final VoidCallback onPressed;
  bool? isIcon = false;
  IconData? icon;
  double width;
  double height;
  IconAppButtons(
      {super.key,
      required this.foregroundColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.width,
      required this.height,
      this.icon,
      this.isIcon,
      required this.borderRadius,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(2),
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
          border: Border.all(
            color: borderColor,
            width: 1.0,
          ),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            // margin: EdgeInsets.all(2),
            // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            // minimumSize: Size.fromHeight(height),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            foregroundColor: foregroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                borderRadius.toDouble(),
              ),
            ),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
