import 'package:flutter/material.dart';

class RandomText extends StatelessWidget {
  
  final List<String> randomTexts;
  final int randomTextsIdx;

  RandomText({
    this.randomTexts,
    this.randomTextsIdx,
  });

  Widget build(BuildContext context) {
    return Align(
      child: Text(
        randomTexts[
            randomTextsIdx], // Fetching text from the random text collection
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.brown),
      ),
      alignment: Alignment.topLeft,
    );
  }
}
