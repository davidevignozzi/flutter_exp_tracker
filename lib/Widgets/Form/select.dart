import 'package:exp_tracker/Widgets/Buttons/arrow.dart';
import 'package:exp_tracker/Widgets/Buttons/plus.dart';
import 'package:exp_tracker/Widgets/Form/form.dart';
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
    // when inbound is pressed
    inboundPressed() {
      setState(() {
        inboundSelected = !inboundSelected;
        outgoingSelected = false;
      });
    }

    // when outgoing is pressed
    outgoingPressed() {
      setState(() {
        outgoingSelected = !outgoingSelected;
        inboundSelected = false;
      });
    }

    return Container(
      width: double.infinity,
      // height: 168,
      // if something is selected heigth
      height: inboundSelected | outgoingSelected ? 500 : 168,
      decoration: BoxDecoration(
        color: Palette.myBg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black,
              blurRadius: 50,
              spreadRadius: -12,
              offset: Offset(0, 0))
        ],
      ),
      child: Column(
        children: [
          arrow(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // INBOUND
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
              ),
              Container(
                //OUTGOING
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
                  child: Text("Ucite"),
                  style: ElevatedButton.styleFrom(
                    primary: outgoingSelected ? Palette.myOrange : Palette.myBg,
                    onPrimary:
                        outgoingSelected ? Palette.myBg : Palette.myOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // if something is selected show form
          inboundSelected ? form() : Container(),
        ],
      ),
    );
  }
}
