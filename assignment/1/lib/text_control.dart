import 'package:flutter/material.dart';
import 'package:flutter_assignment/text_output.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  var _text = "Juan";
  var _next = "Rybczinski";

  void _changeText() {
    var temp = _text;
    setState(() {
      _text = _next;
    });
    _next = temp;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextOutput(_text),
          ElevatedButton(
            onPressed: () => _changeText(),
            child: Text("TextControl"),
          )
        ],
      ),
    );
  }
}
