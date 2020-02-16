import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TestAppPage());
  }
}

class TestAppPage extends StatefulWidget {
  TestAppPage({Key key}) : super(key: key);

  @override
  _TestAppPageState createState() => _TestAppPageState();
}

class _TestAppPageState extends State<TestAppPage> {
  Color updateColor = Colors.white;
  Color updateTextColor = Colors.black;
  var textSize = 20.0;

  void _updateColor() {
    setState(() {
      updateColor = getRandomColor();
      updateTextColor = getRandomColor();
      textSize = 20.0 + Random().nextInt(10);
    });
  }

  Color getRandomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _updateColor();
        },
        child: Scaffold(
            body: Center(
                child: Text(
              "Hey there",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: textSize, color: updateTextColor),
            )),
            backgroundColor: updateColor));
  }
}
