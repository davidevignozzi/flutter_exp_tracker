import 'package:exp_tracker/Style/palette.dart';
import 'package:flutter/material.dart';

class seeMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          'Mostra altro',
          style: TextStyle(color: Palette.myGrey),
        ),
        onPressed: () {},
      ),
    );
  }
}
