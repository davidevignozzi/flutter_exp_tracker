import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/gloabl.dart';
import 'package:flutter/material.dart';

class close extends StatefulWidget {
  @override
  _closeState createState() => new _closeState();
}

class _closeState extends State<close> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Palette.myBg, //Colors.blue,
      foregroundColor: Colors.white, //Colors.red,
      child: Icon(Icons.close),
      onPressed: () {
        setState(() {
          globalTable = false;
        });
      },
    );
  }
}
