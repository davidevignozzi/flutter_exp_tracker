import 'package:exp_tracker/movements.dart';
import 'package:flutter/material.dart';
import '../palette.dart';

class miniTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 346,
        height: 297,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
      ),
    );
  }
}
