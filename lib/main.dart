import 'package:exp_tracker/Widgets/Bottom/start.dart';
import 'package:exp_tracker/Widgets/Buttons/arrow.dart';
import 'package:exp_tracker/Widgets/Buttons/close.dart';
import 'package:exp_tracker/Widgets/Form/select.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expance Tracker',
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            arrow(),
            close(),
            selectState(),
            start(),
          ],
        ),
      )),
      //home: Select(),
    );
  }
}
