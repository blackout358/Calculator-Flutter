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
    fixedSize: MaterialStateProperty.all<Size>(Size(80, 80)),
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
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        text = i.toString();
                      });
                    },
                    style: myButtonStyle,
                    child: Text(i.toString()),
                  );
                }),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      text = "";
                    });
                  },
                  style: myButtonStyle,
                  child: const Text("+"),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...List.generate(3, (index) {
                  int i = index + 4;
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        text = i.toString();
                      });
                    },
                    style: myButtonStyle,
                    child: Text(i.toString()),
                  );
                }),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      text = "";
                    });
                  },
                  style: myButtonStyle,
                  child: const Text("-"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = "";
                });
              },
              child: const Text("Reset"),
            ),
            Container(
              height: 306,
              child: Column(
                children: [
                  Text(text),
                  Text(text),
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
