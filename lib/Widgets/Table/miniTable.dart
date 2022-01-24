import 'package:exp_tracker/Widgets/Buttons/seeMore.dart';
import 'package:exp_tracker/Widgets/Table/item.dart';
import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            // ----------------------------------------------------------------- items
            item(),
            Container(
              // --------------------------------------------------------------- See More Button
              child: seeMore(),
            ),
          ],
        ),
      ),
    );
  }
}
