import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class arrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      // icon: IconData(0xe098, fontFamily: 'MaterialIcons'),
      icon: Icon(Icons.expand_more),
      color: Palette.myWhite,
      iconSize: 44,
      onPressed: () {},
    );
  }
}
