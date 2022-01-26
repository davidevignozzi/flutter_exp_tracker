import 'package:exp_tracker/home.dart';
import 'package:exp_tracker/Style/palette.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
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
          child: home(),
        ),
      ),
    );
  }
}
