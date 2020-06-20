import "package:flutter/material.dart";
import "package:basketball/utilities/constants.dart";
class GameOverButton extends StatelessWidget {
  final String title;
  final Function method;
  GameOverButton({this.title, this.method});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: method,
      child: Container(
        padding: EdgeInsets.all(30),
        color: Colors.red,
        child: GestureDetector(
          child: Text(title, textAlign: TextAlign.center, style: kGameOverText,)
        )
      ),
    );
  }
}

