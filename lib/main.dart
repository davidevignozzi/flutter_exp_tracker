import 'package:exp_tracker/Widgets/Buttons/arrow.dart';
import 'package:exp_tracker/Widgets/Buttons/plus.dart';
import 'package:exp_tracker/Widgets/Form/select.dart';

import 'package:exp_tracker/Widgets/palette.dart';

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
            plus(),
            selectState(),
          ],
        ),
      )),
      //home: Select(),
    );
  }
}
