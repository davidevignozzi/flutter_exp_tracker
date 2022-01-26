import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/gloabl.dart';
import 'package:flutter/material.dart';

class arrow extends StatefulWidget {
  @override
  _arrowState createState() => _arrowState();
}

class _arrowState extends State<arrow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: IconButton(
        icon: Icon(Icons.expand_more),
        color: Palette.myWhite,
        iconSize: 44,
        onPressed: () {
          setState(() {
            globalStart = true;
          });
        },
      ),
    );
  }
}
