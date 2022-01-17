import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 300,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(color: Palette.myOrange),
      child: Column(
        children: [
          // form start here
          Form(
            // movement Name
            child: TextFormField(
              style: TextStyle(
                color: Palette.myWhite,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Nome movimento',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
