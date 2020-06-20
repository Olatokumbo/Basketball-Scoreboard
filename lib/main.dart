import "package:flutter/material.dart";
import "./screen/scoreboard.dart";
import 'package:flutter/services.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
Widget build(BuildContext context){
    // Set portrait orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  return MaterialApp(
    theme: ThemeData.dark().copyWith(
      accentColor: Color(0xFF19647E),
    ),
    home: ScoreBoard()
    );
}
}

