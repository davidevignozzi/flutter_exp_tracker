import 'package:exp_tracker/Widgets/Buttons/addMovement.dart';
import 'package:exp_tracker/Widgets/Form/formDate.dart';
import 'package:exp_tracker/Widgets/Form/formImport.dart';
import 'package:exp_tracker/Widgets/Form/formText.dart';
import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class formControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          // Movement Name
          Container(child: formText()),
          // Movement Date
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  // Form Date
                  formDate(),

                  // Output Date
                  Container(
                    margin: EdgeInsets.only(
                      left: (20),
                    ),
                    alignment: Alignment.center,
                    width: 150,
                    height: 53,
                    child: DefaultTextStyle(
                      child: Text('Data'),
                      style: TextStyle(color: Palette.myWhite),
                    ),
                  ),
                ],
              ),
            ),
            alignment: Alignment.topLeft,
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              children: [
                // Movement Import
                Container(child: formImport()),
                // Add import button
                Container(
                  child: addMovement(),
                  margin: EdgeInsets.only(left: 37),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
