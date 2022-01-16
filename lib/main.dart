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
      theme: ThemeData(
        backgroundColor: Palette.myBg,
      ),
      home: Scaffold(
        body: Column(
          children: [
            arrow(),
            plus(),
            // inboundButton(),
            // outgoingButton(),
            selectState(),
          ],
        ),
      ),
      //home: Select(),
    );
  }
}
