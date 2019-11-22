import 'package:flutter/material.dart';

class StartOver extends StatelessWidget {
  final Function startOverAction;

  StartOver({this.startOverAction});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Text(
            "Well ! I just ran out of random things to say !! ",
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Want to start over ? Click here ↓",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            textColor: Colors.blueAccent,
            onPressed: startOverAction,
          ),
        ].map((widgetListEntry){
            return Container(
              child: widgetListEntry,
                alignment: Alignment.center,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(12.0),
            );
        }).toList(), // Wrapping widget list entries in a Container widget for better spacing with margin/padding named properties
    );
  }
}
