import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/Widgets/Bottom/baseStart.dart';
import 'package:exp_tracker/Widgets/Buttons/plus.dart';
import 'package:flutter/material.dart';

class start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Palette.myBg,
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 100,
                    spreadRadius: -15,
                    offset: Offset(0, 7))
              ],
            ),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  child: plus(),
                  left: 157,
                  bottom: 67,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
