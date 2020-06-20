import 'package:basketball/utilities/constants.dart';
import "package:flutter/material.dart";

class PointButton extends StatelessWidget {
  final String buttonText;
  final Function method;
  PointButton({this.buttonText, this.method});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: RawMaterialButton(
        splashColor: kCardColor ,
        onPressed: method,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        constraints: BoxConstraints.tightFor(width: 55.0, height: 55.0),
        elevation: 15.0,
        child: Text(buttonText, style: kPointButtonText),
        fillColor: Color(0xFFD3D3D3),
      ),
    );
  }
}
