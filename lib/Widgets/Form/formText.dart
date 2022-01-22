import 'package:exp_tracker/Style/palette.dart';
import 'package:flutter/material.dart';

class formText extends StatefulWidget {
  @override
  formTextState createState() => new formTextState();
}

class formTextState extends State<formText> {
  var name;
  void setName(name) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Nome movimento',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
