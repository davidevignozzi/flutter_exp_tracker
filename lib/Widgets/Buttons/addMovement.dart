import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class addMovement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 123,
      height: 53,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black,
              blurRadius: 14,
              spreadRadius: -8,
              offset: Offset(5, 7))
        ],
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Aggiungi"),
        style: ElevatedButton.styleFrom(
          primary: Palette.myBg,
          onPrimary: Palette.myWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
