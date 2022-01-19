import 'dart:html';

import 'package:exp_tracker/Widgets/Bottom/start.dart';
import 'package:exp_tracker/Widgets/Form/select.dart';
import 'package:exp_tracker/Widgets/Table/miniTable.dart';
import 'package:exp_tracker/Widgets/palette.dart';
import 'package:exp_tracker/title.dart';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

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
      supportedLocales: [
        Locale('it', 'IT'), // English, no country code
      ],
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
              // --------------------------------------------------------------- Title
              // Container(
              //   child: title(),
              //   margin: EdgeInsets.only(bottom: 30),
              // ),
              // // --------------------------------------------------------------- Mini Table
              // Container(
              //   child: miniTable(),
              //   alignment: Alignment.center,
              //   margin: EdgeInsets.only(bottom: 30),
              // ),
              // --------------------------------------------------------------- Base
              startBool ? selectState() : start(),
            ],
          ),
        ),
      ),
    );
  }
}
