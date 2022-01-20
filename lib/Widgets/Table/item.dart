import 'package:flutter/material.dart';
import '../../Style/palette.dart';

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
            style: TextStyle(
                color: Palette.myGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10, left: 42, right: 29),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // --------------------------------------------------------------- Nome dell'importo
              Container(
                child: Text(
                  'Regalo',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              // --------------------------------------------------------------- Importo
              Container(
                child: Text(
                  '10.000€',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Palette.myOrange),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
