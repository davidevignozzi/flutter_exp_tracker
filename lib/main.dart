import 'package:exp_tracker/Widgets/Buttons/inbound.dart';
import 'package:exp_tracker/Widgets/Buttons/outgoing.dart';
import 'package:exp_tracker/Widgets/Buttons/plus.dart';
import 'package:exp_tracker/Widgets/palette.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
          children: [plus(), inboundButton(), outgoingButton()],
        ),
      ),
      //home: Select(),
    );
  }
}
