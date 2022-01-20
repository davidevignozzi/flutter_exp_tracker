import 'package:exp_tracker/Style/palette.dart';
import 'package:flutter/material.dart';

class close extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Palette.myBg, //Colors.blue,
      foregroundColor: Colors.white, //Colors.red,
      child: Icon(Icons.close),
      onPressed: () {},
    );
  }
}
