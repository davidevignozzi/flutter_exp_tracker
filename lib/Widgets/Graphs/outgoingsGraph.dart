import 'dart:async';

import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/gloabl.dart';
import 'package:exp_tracker/movementList.dart';
import 'package:flutter/material.dart';

class outgoingGraph extends StatefulWidget {
  @override
  _outgoingGraphState createState() => _outgoingGraphState();
}

class _outgoingGraphState extends State<outgoingGraph> {
  @override
  var timer;
  void initState() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer?.cancel();
  }

  Widget build(BuildContext context) {
    return Container(
      child: Text(
        generalTotalOutgoings.toString(),
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
