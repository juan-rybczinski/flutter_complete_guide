import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveTextButton extends StatelessWidget {
  final String text;
  final VoidCallback presentDatePicker;

  AdaptiveTextButton(this.text, this.presentDatePicker);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: presentDatePicker)
        : TextButton(
            onPressed: presentDatePicker,
            child: Text(
              "Choose Date",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
