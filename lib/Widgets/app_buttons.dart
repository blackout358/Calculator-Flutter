import 'package:flutter/material.dart';

class AppButtons extends StatefulWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final int borderRadius;
  final VoidCallback onPressed;
  Color myColor = Colors.blue;
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
  State<AppButtons> createState() => _AppButtonsState();
}

class _AppButtonsState extends State<AppButtons> {
  Color buttonColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTapDown: (_) => setState(() {
          widget.onPressed;
          buttonColor = Colors.grey;
        }),
        onTapUp: (_) => setState(() {
          buttonColor = Colors.blue;
        }),
        child: Container(
          margin: EdgeInsets.all(2),
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          // width: width,
          // height: (MediaQuery.of(context).size.width - 30) / 4,
          // width: (MediaQuery.of(context).size.width - 30) / 4,
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius:
                  BorderRadius.circular(widget.borderRadius.toDouble()),
              border: Border.all(color: widget.borderColor, width: 1.0)),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 0.04 * MediaQuery.of(context).size.height,
                color: widget.foregroundColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
