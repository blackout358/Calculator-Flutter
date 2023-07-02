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
  String text = "A";

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
        backgroundColor: Colors.limeAccent,
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = "";
                });
              },
              child: Text("Reset", style: myTextStyle),
            ),
            SizedBox(
              height: 50,
              child: Column(
                children: [
                  Text(text),
                ],
              ),
            ),
            Spacer(),
            Container(
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
                            setState(() {
                              text = i.toString();
                            });
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
                          setState(() {
                            text = "×";
                          });
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
                            setState(() {
                              text = i.toString();
                            });
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
                          setState(() {
                            text = "-";
                          });
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
                            setState(() {
                              text = i.toString();
                            });
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
                          setState(() {
                            text = "+";
                          });
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
                          setState(() {
                            print(MediaQuery.of(context).size.width);
                            text = "0";
                          });
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
            ),
            SizedBox(
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
