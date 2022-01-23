import 'dart:developer';

import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/genarlVariables.dart';
import 'package:exp_tracker/movement.dart';
import 'package:exp_tracker/movementList.dart';
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
        onPressed: () {
          var movementToAdd = new Movement(
            name: generalName,
            date: generalDate,
            dateParsed: generalDateParsed,
            import: generalImport,
            importParsed: generalImportParsed,
            inbound: generalInbound,
            outgoing: generalOutgoing,
          );
          movementsList.add(movementToAdd);
          // print(generalTotal);
          print(movementsList);
        },
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
