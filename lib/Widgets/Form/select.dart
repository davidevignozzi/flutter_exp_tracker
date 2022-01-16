import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';

class selectState extends StatefulWidget {
  @override
  select createState() => new select();
}

class select extends State<selectState> {
  bool outgoingSelected = false;
  bool inboundSelected = false;

  Widget build(BuildContext context) {
    inboundPressed() {
      setState(() {
        inboundSelected = !inboundSelected;
        outgoingSelected = false;
      });
    }

    outgoingPressed() {
      setState(() {
        outgoingSelected = !outgoingSelected;
        inboundSelected = false;
      });
    }

    return Container(
      child: Row(children: [
        Container(
          // INBOUND
          width: 122.0,
          height: 52.0,
          child: ElevatedButton(
            onPressed: inboundPressed,
            child: Text("Entrate"),
            style: ElevatedButton.styleFrom(
                primary: inboundSelected ? Palette.myGreen : Palette.myBg,
                onPrimary: inboundSelected ? Palette.myBg : Palette.myGreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
          ),
        ),
        Container(
            //OUTGOING
            width: 122.0,
            height: 52.0,
            child: ElevatedButton(
              onPressed: outgoingPressed,
              child: Text("Ucite"),
              style: ElevatedButton.styleFrom(
                  primary: outgoingSelected ? Palette.myOrange : Palette.myBg,
                  onPrimary: outgoingSelected ? Palette.myBg : Palette.myOrange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ))
      ]),
    );
  }
}
