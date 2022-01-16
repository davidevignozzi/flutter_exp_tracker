import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';
import 'package:exp_tracker/Widgets/palette.dart';

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
