import 'package:exp_tracker/Style/palette.dart';
import 'package:flutter/material.dart';

class inbound extends StatefulWidget {
  @override
  inboundState createState() => new inboundState();
}

class inboundState extends State<inbound> {
  bool outgoingSelected = false;
  bool inboundSelected = false;

  Widget build(BuildContext context) {
    // when inbound is pressed
    inboundPressed() {
      setState(() {
        inboundSelected = !inboundSelected;
        outgoingSelected = false;
      });
    }

    return Container(
      width: 122.0,
      height: 52.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              spreadRadius: -7,
              offset: Offset(5, 7))
        ],
      ),
      child: ElevatedButton(
        onPressed: inboundPressed,
        child: Text("Entrate"),
        style: ElevatedButton.styleFrom(
          primary: inboundSelected ? Palette.myGreen : Palette.myBg,
          onPrimary: inboundSelected ? Palette.myBg : Palette.myGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
