import 'package:exp_tracker/Widgets/Form/formControls.dart';
import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 300,
      margin: EdgeInsets.only(top: 30),
      // decoration: BoxDecoration(color: Palette.myOrange),
      child: formControls(),
    );
  }
}
