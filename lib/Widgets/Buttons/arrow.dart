import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class arrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: IconButton(
        icon: Icon(Icons.expand_more),
        color: Palette.myWhite,
        iconSize: 44,
        onPressed: () {},
      ),
    );
  }
}
