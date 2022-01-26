import 'package:exp_tracker/Style/palette.dart';
import 'package:flutter/material.dart';

class base extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: Palette.myOrange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  blurStyle: BlurStyle.normal,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
