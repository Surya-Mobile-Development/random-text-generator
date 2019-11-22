import 'package:flutter/material.dart';

class TextRequestButton extends StatelessWidget {
  final Function textRequestAction;

  TextRequestButton({this.textRequestAction});

  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        "click me for some random text",
      ),
      onPressed: textRequestAction,
      padding: EdgeInsets.all(12.0),
    );
  }
}
