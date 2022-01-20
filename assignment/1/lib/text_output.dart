import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String text;

  TextOutput(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
