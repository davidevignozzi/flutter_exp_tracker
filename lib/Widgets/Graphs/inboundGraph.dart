import 'dart:async';

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
        child: Column(
      children: [
        Text(
          generalTotalInbounds.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
