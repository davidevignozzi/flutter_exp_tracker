import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/gloabl.dart';
import 'package:exp_tracker/movementList.dart';
import 'package:flutter/material.dart';

class inboundGraph extends StatefulWidget {
  @override
  _inboundGraphState createState() => _inboundGraphState();
}

class _inboundGraphState extends State<inboundGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        generalTotalInbounds == 0 ? 'Entrate' : generalTotalInbounds.toString(),
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
