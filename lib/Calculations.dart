import 'package:math_parser/math_parser.dart';

class Calculations {
  static String calculationInterface(String value, String text) {
    switch (value) {
      case "CLEAR":
        return "";
      case "DELETE":
        if (text.isNotEmpty) {
          return text.substring(0, text.length - 1);
        }
      case "EQUALS":
        try {
          return (MathNodeExpression.fromString(text)
                  .calc(MathVariableValues.none))
              .toString();
        } on Exception catch (_) {
          return "Error";
        }
      default:
        return text + value;
    }
    return "";
  }
}
