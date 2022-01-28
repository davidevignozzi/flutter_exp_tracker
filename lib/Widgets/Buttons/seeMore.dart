import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/gloabl.dart';
import 'package:exp_tracker/movementList.dart';
import 'package:flutter/material.dart';

class seeMore extends StatefulWidget {
  @override
  _seeState createState() => new _seeState();
}

class _seeState extends State<seeMore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          'Mostra altro',
          style: TextStyle(color: Palette.myGrey),
        ),
        onPressed: () {
          setState(() {
            globalTable = true;
          });
          orderList();
        },
      ),
    );
  }
}
