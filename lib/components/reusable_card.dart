import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:basketball/utilities/constants.dart";
class ReusableCard extends StatelessWidget {
  final Widget cardChild;
  ReusableCard({this.cardChild});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 5),
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
