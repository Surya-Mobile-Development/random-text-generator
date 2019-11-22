// Standard Libraries
import 'package:flutter/material.dart';

// User-Defined Libraries
import './start_over.dart';
import './generate_random_text.dart';

void main() => runApp(FlutterAssignment1());

class FlutterAssignment1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FlutterAssignment1State();
  }
}

class FlutterAssignment1State extends State<FlutterAssignment1> {
  int _randomTextRequestCnt = 0; // Tracks the number of button clicks from user, requesting a random text to be displayed on the screen.
  // This also acts as a list index into the list-collection holding a bunch of random texts.

  final List<String> _randomTextCollection = [
    "Whats up 😏 !",
    "Weather is kind of chilly today ❄ !",
    "Excited about the new Star Wars movie ?",
    "So, what is a trade war ?",
    "Blue is my favorite color 😎",
    "Friends or Seinfeld ? "
  ];

  // Action for button pressed to fetch random text
  void _incrementRandomRequestCnt() {
    setState(() {
      _randomTextRequestCnt++;
    });

    print("Random text request count: $_randomTextRequestCnt");
  }

// Action to start over with requesting random texts with a button press, when out of random texts.
  void _startOverRandomRequests() {
    setState(() {
      _randomTextRequestCnt = 0;
    });

    print("Random text request count has been reset to $_randomTextRequestCnt");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ready for a random dialogue ?",
          ),
        ),
        body: (_randomTextRequestCnt < _randomTextCollection.length)
            ? GenerateRandomText(
                randomTextList: _randomTextCollection,
                randomTextListIdx: _randomTextRequestCnt,
                requestButtonAction: _incrementRandomRequestCnt,
              )
            : StartOver(
                startOverAction: _startOverRandomRequests,
              ),
      ),
    );
  }
}
