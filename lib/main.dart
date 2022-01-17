import 'package:exp_tracker/Widgets/Bottom/start.dart';
import 'package:exp_tracker/Widgets/Buttons/arrow.dart';
import 'package:exp_tracker/Widgets/Buttons/close.dart';
import 'package:exp_tracker/Widgets/Form/select.dart';
import 'package:exp_tracker/Widgets/palette.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // arrow(),
              //close(),
              // selectState(),
              // start(),
              startBool ? selectState() : selectState(),
            ],
          ),
        ),
      ),
    );
  }
}
