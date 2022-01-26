import 'package:exp_tracker/Widgets/Buttons/arrow.dart';
import 'package:exp_tracker/Widgets/Form/form.dart';
import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/gloabl.dart';
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
        //!GENERAL
        generalInbound = true;
        generalOutgoing = false;
      });
    }

    // when outgoing is pressed
    outgoingPressed() {
      setState(() {
        outgoingSelected = !outgoingSelected;
        inboundSelected = false;
        //!GENERAL
        generalOutgoing = true;
        generalInbound = false;
      });
    }

    return Container(
      width: double.infinity,
      // if something is selected change heigth
      height: inboundSelected || outgoingSelected ? 475 : 190,
      decoration: BoxDecoration(
        color: Palette.myBg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
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
          // ------------------------------------------------------------------- Arrow button
          arrow(),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ------------------------------------------------------------- INBOUND
                Container(
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
                      onPrimary:
                          inboundSelected ? Palette.myBg : Palette.myGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

                //-------------------------------------------------------------- OUTGOING
                Container(
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
                      primary:
                          outgoingSelected ? Palette.myOrange : Palette.myBg,
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
          ),

          // if something is selected show form
          inboundSelected ? Container(child: form()) : Container(),
          outgoingSelected ? Container(child: form()) : Container(),
        ],
      ),
    );
  }
}
