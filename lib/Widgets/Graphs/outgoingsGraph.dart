import 'package:exp_tracker/Style/palette.dart';
import 'package:flutter/material.dart';

class outgoingGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Uscite',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
