import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class outgoing extends StatefulWidget {
  @override
  outgoingState createState() => new outgoingState();
}

class outgoingState extends State<outgoing> {
  bool outgoingSelected = false;
  bool inboundSelected = false;

  Widget build(BuildContext context) {
    // when outgoing is pressed
    outgoingPressed() {
      setState(() {
        outgoingSelected = !outgoingSelected;
        inboundSelected = false;
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
        onPressed: outgoingPressed,
        child: Text("Entrate"),
        style: ElevatedButton.styleFrom(
          primary: outgoingSelected ? Palette.myGreen : Palette.myBg,
          onPrimary: outgoingSelected ? Palette.myBg : Palette.myGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
