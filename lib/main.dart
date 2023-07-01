import 'package:calculator/Widgets/app_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String text = "";
  ButtonStyle myButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(
          color: Colors.teal,
          width: 2,
        ),
      ),
    ),
    minimumSize: MaterialStateProperty.all<Size>(const Size(90, 90)),
    // child: Ink(
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //       colors: [Color(0xff374ABE), Color(0xff64B6FF)],
    //       begin: Alignment.centerLeft,
    //       end: Alignment.centerRight,
    //     ),
    //     borderRadius: BorderRadius.circular(18),
    //   ),
    // ),
  );

  TextStyle myTextStyle = const TextStyle(
    fontSize: 40,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dez"),
        ),
        backgroundColor: Colors.amberAccent,
        body: Column(
          children: [
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
                    size: 90,
                    borderRadius: 30,
                  );
                  // return ElevatedButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       text = i.toString();
                  //     });
                  //   },
                  //   style: myButtonStyle,
                  //   child: Text(i.toString(), style: myTextStyle),
                  // );
                }),
                AppButtons(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  borderColor: Colors.teal,
                  text: "+",
                  size: 90,
                  borderRadius: 20,
                )
              ],
            ),
            const SizedBox(height: 15),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     ...List.generate(3, (index) {
            //       int i = index + 4;
            //       return ElevatedButton(
            //         onPressed: () {
            //           setState(() {
            //             text = i.toString();
            //           });
            //         },
            //         style: myButtonStyle,
            //         child: Text(i.toString(), style: myTextStyle),
            //       );
            //     }),
            //     ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           text = "";
            //         });
            //       },
            //       style: myButtonStyle,
            //       child: Text("-", style: myTextStyle),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 15),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     ...List.generate(3, (index) {
            //       int i = index + 1;
            //       return ElevatedButton(
            //         onPressed: () {
            //           setState(() {
            //             text = i.toString();
            //           });
            //         },
            //         style: myButtonStyle,
            //         child: Text(i.toString(), style: myTextStyle),
            //       );
            //     }),
            //     ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           text = "";
            //         });
            //       },
            //       style: myButtonStyle,
            //       child: Text("x", style: myTextStyle),
            //     ),
            //   ],
            // ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = "";
                });
              },
              child: Text("Reset", style: myTextStyle),
            ),
            SizedBox(
              height: 306,
              child: Column(
                children: [
                  Text(text),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
