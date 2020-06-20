import 'package:basketball/utilities/constants.dart';
import "package:flutter/material.dart";
import "../components/reusable_card.dart";
import "package:basketball/components/point_button.dart";
import "package:basketball/components/game_over_button.dart";
import "package:basketball/scoreboard_brain.dart";
class ScoreBoard extends StatefulWidget {
  @override
  _ScoreBoardState createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  int leftTeam = 0;
  int rightTeam = 0;
  ScoreBoard score = ScoreBoard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scoreboard"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        ReusableCard(
                          cardChild: Text(
                            "Golden State Warriors",
                            style: kTeamStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          leftTeam.toString(),
                          style: kTeamScoreNumber,
                        ),
                        Container(
                          width: 80.0,
                          margin: EdgeInsets.all(25),
                          child: Divider(
                            height: 2.0,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                PointButton(
                                  buttonText: "-3",
                                    method: (){
                                      setState(() {
                                       (leftTeam>=3) ? leftTeam=leftTeam-3: leftTeam=0;
                                      });
                                    }
                                ),
                                PointButton(
                                  buttonText: "-2",
                                    method: (){
                                      setState(() {
                                        (leftTeam>=2) ? leftTeam=leftTeam-2: leftTeam=0;
                                      });
                                    }
                                ),
                                PointButton(
                                  buttonText: "-1",
                                    method: (){
                                      setState(() {
                                        (leftTeam>1) ? leftTeam=leftTeam-1: leftTeam=0;
                                      });
                                    }
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                PointButton(
                                  buttonText: "+3",
                                  method: (){
                                    setState(() {
                                      leftTeam=leftTeam+3;
                                    });
                                  },
                                ),
                                PointButton(
                                  buttonText: "+2",
                                    method: (){
                                      setState(() {
                                        leftTeam=leftTeam+2;
                                      });
                                    }
                                ),
                                PointButton(
                                  buttonText: "+1",
                                    method: (){
                                      setState(() {
                                        leftTeam=leftTeam+1;
                                      });
                                    }
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 520,
                    child: VerticalDivider(color: Colors.white),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        ReusableCard(
                          cardChild: Text("Cleveland Caveliers",
                              style: kTeamStyle, textAlign: TextAlign.center),
                        ),
                        Text(
                          rightTeam.toString(),
                          style: kTeamScoreNumber,
                        ),
                        Container(
                          width: 80.0,
                          margin: EdgeInsets.all(25),
                          child: Divider(
                            height: 2.0,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                PointButton(
                                  buttonText: "-3",
                                    method: (){
                                      setState(() {
                                        (rightTeam>=3) ? rightTeam=rightTeam-3: rightTeam=0;
                                      });
                                    }
                                ),
                                PointButton(
                                  buttonText: "-2",
                                    method: (){
                                      setState(() {
                                        (rightTeam>=2) ? rightTeam=rightTeam-2: rightTeam=0;
                                      });
                                    }
                                ),
                                PointButton(
                                  buttonText: "-1",
                                    method: (){
                                      setState(() {
                                        (rightTeam>=1) ? rightTeam=rightTeam-1: rightTeam=0;
                                      });
                                    }
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                PointButton(
                                  buttonText: "+3",
                                    method: (){
                                      setState(() {
                                        rightTeam=rightTeam+3;
                                      });
                                    }
                                ),
                                PointButton(
                                  buttonText: "+2",
                                    method: (){
                                      setState(() {
                                        rightTeam=rightTeam+2;
                                      });
                                    }
                                ),
                                PointButton(
                                  buttonText: "+1",
                                    method: (){
                                      setState(() {
                                        rightTeam=rightTeam+1;
                                      });
                                    }
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GameOverButton(
              title: "GAME OVER",
              method: (){
                setState(() {
                  leftTeam = 0;
                  rightTeam = 0;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
