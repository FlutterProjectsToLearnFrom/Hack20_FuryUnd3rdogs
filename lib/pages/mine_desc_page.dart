import 'dart:ui' as ui;
import 'package:Hack20_FuryUnd3rdogs/layout_back/column_tile.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/last_column.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/row_tile.dart';
import 'package:Hack20_FuryUnd3rdogs/minesweeper/root.dart';
import 'package:Hack20_FuryUnd3rdogs/pages/home_page.dart';
import 'package:Hack20_FuryUnd3rdogs/widgets/emulator.dart';
import 'package:flutter/material.dart';

class MineDescPage extends StatefulWidget {
  @override
  _MineDescPageState createState() => _MineDescPageState();
}

class _MineDescPageState extends State<MineDescPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Image.asset(
          'assets/images/background.gif',
          fit: BoxFit.fitHeight,
        ),
        new BackdropFilter(
          filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: new Container(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 45.0, bottom: 83.0, left: 35.0, right: 35.0),
          child: Material(
            color: Colors.black,
            elevation: 15,
            shadowColor: Colors.blueAccent,
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.topLeft,
              children: <Widget>[
                IconButton(
                  onPressed: () => {
                    print('kasndkas'),
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()))
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.grey,
                ),
                Column(children: <Widget>[
                  RowTile(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'minesweeper'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 7.0,
                            color: Colors.redAccent,
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                        fontFamily: 'Retro Gaming',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RowTile(),
                  SizedBox(
                    height: 489,
                  ),
                  RowTile()
                ]),
                Positioned(
                  top: 130,
                  left: 80,
                  child: Image.asset('assets/images/p3.png',width: 150,height: 150,),
                ),
                Positioned(
                  top: 300,
                  left: 40,
                  child: Text('Minesweeper is a single-player \n'
                      'puzzle video game by\n'
                      'Microsoft corporation',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,fontFamily: '8 bit'),),
                ),
                Positioned(
                  top: 500,
                  left: 50,
                  right: 50,
                  child: RaisedButton(
                    color: Colors.greenAccent,
                    onPressed: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MineRootPage())),
                    child: Text(
                      'PLAY!',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ColumnTile(),
                    SizedBox(
                      width: 270,
                    ),
                    LastColumnTile(),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
