import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';
import 'package:exp_tracker/Widgets/palette.dart';

class arrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Palette.myBg, //Colors.blue,
      foregroundColor: Palette.myWhite, //Colors.red,
      child: Icon(Icons.add),
      onPressed: () {
        print("+");
      },
    );
  }
}
