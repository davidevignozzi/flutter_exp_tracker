import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/gloabl.dart';
import 'package:flutter/material.dart';

class plus extends StatefulWidget {
  @override
  _plusState createState() => _plusState();
}

class _plusState extends State<plus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67,
      height: 67,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black,
              blurRadius: 100,
              spreadRadius: -15,
              offset: Offset(0, 7))
        ],
      ),
      child: FloatingActionButton(
        backgroundColor: Palette.myBg, //Colors.blue,
        foregroundColor: Colors.white, //Colors.red,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            globalStart = false;
          });
        },
      ),
    );
  }
}
