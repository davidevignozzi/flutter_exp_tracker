import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class plus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67,
      height: 67,
      child: FloatingActionButton(
        backgroundColor: Palette.myBg, //Colors.blue,
        foregroundColor: Colors.white, //Colors.red,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
