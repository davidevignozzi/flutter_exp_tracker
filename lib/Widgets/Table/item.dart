import 'package:exp_tracker/movements.dart';
import 'package:flutter/material.dart';
import '../palette.dart';

class item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 21, left: 29),
          alignment: Alignment.centerLeft,
          // ------------------------------------------------------------------- Data dell'importo
          child: Text(
            '03/02/2022',
            style: TextStyle(color: Palette.myGrey),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10, left: 42, right: 29),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // --------------------------------------------------------------- Nome dell'importo
              Container(
                child: Text('Regalo'),
              ),
              // --------------------------------------------------------------- Importo
              Container(
                child: Text('10.000€'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
