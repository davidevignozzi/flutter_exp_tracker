import 'package:exp_tracker/Widgets/Bottom/baseStart.dart';
import 'package:exp_tracker/Widgets/Buttons/plus.dart';
import 'package:flutter/material.dart';

class start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 150,
          ),
          base(),
          Positioned(
            child: plus(),
            bottom: 55,
          ),
        ],
      ),
    );
  }
}
