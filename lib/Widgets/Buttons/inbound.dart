import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';
import 'package:exp_tracker/Widgets/palette.dart';

class inboundButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122.0,
      height: 52.0,
      child: ElevatedButton(
        onPressed: () {
          print("Entrata");
        },
        child: Text('Entrate'),
        style: ElevatedButton.styleFrom(
            primary: Palette.myBg,
            onPrimary: Palette.myGreen,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
