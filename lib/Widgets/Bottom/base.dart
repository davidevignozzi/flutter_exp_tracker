import 'package:exp_tracker/Widgets/Buttons/plus.dart';
import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class base extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: Palette.myBg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
    );
  }
}
