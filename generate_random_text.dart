// Standard Libraries
import 'package:flutter/material.dart';

// User-Defined Libraries
import 'package:flutter_assignment_1/text_request_button.dart';
import './random_text.dart';

class GenerateRandomText extends StatelessWidget {
  final List<String> randomTextList;
  final int randomTextListIdx;
  final Function requestButtonAction;

  GenerateRandomText({
    @required this.randomTextList,
    @required this.randomTextListIdx,
    @required this.requestButtonAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          RandomText(
            randomTexts: randomTextList,
            randomTextsIdx: randomTextListIdx,
          ),
          TextRequestButton(textRequestAction: requestButtonAction,),
        ].map((widgetEntry) { // map() generates an iterable and so the toList() is used to convert it to a list
          return Container(
            child: widgetEntry,
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(8.0),
          );
        }).toList(), // Wrapped each widget entry in the list with a Container widget for appropriate spacing with "margin, padding" named properties.
      ),
    );
  }
}
