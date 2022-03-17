import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.black,
    Colors.orange
  ];
  static const colorizeTextStyle =
      TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: AnimatedTextKit(animatedTexts: [
            ColorizeAnimatedText(
              'May Your Life Be As Colourful As The Festival Itself Or Even More',
              textStyle: colorizeTextStyle,
              speed: Duration(milliseconds: 800),
              colors: colorizeColors,
            ),
          ]),
        ),
      ),
    );
  }
}
