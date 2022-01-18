import 'package:exp_tracker/Widgets/Form/formDate.dart';
import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class formControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.myGreen,
      // margin: EdgeInsets.all(10),
      child: Column(
        children: [
          // Movement Name
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          // Movement Date
          Container(
            child: formDate(),
            alignment: Alignment.topLeft,
          ),
          Row(
            children: [
              // Movement Import
              Container(),
              // Todo button "Aggiungi inporto"
            ],
          ),
        ],
      ),
    );
  }
}
