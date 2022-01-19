import 'package:exp_tracker/Widgets/Bottom/start.dart';
import 'package:exp_tracker/Widgets/Form/select.dart';
import 'package:exp_tracker/Widgets/Table/miniTable.dart';
import 'package:exp_tracker/Widgets/palette.dart';
import 'package:exp_tracker/title.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // changeStartToSelect() {
  //   bool start = true;
  // }

  const MyApp();
  @override
  Widget build(BuildContext context) {
    var startBool = true;
    return MaterialApp(
      title: 'Expance Tracker',
      home: Scaffold(
        backgroundColor: Palette.myBg,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Positioned(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // --------------------------------------------------------- Title
                    Container(
                      child: title(),
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 20),
                    ),
                    // --------------------------------------------------------- Table

                    Container(
                      child: miniTable(),
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 250),
                    ),
                  ],
                ),
              ),

              // --------------------------------------------------------------- Base
              Positioned(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: startBool ? selectState() : start(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
