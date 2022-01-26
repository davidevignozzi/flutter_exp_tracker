import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:exp_tracker/Widgets/Bottom/start.dart';
import 'package:exp_tracker/Widgets/Form/select.dart';
import 'package:exp_tracker/Widgets/Table/miniTable.dart';
import 'package:exp_tracker/Widgets/Table/table.dart';
import 'package:exp_tracker/gloabl.dart';
import 'package:exp_tracker/title.dart';
import 'Widgets/Graphs/outgoingsGraph.dart';
import 'Widgets/Graphs/inboundGraph.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  // to refresh every second
  @override
  var timer;
  void initState() {
    timer = Timer.periodic(Duration(seconds: 0), (_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer?.cancel();
  }

  Widget build(BuildContext context) {
    return Container(
      child: globalTable == false
          ? Stack(
              children: [
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 47),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [inboundGraph(), outgoingGraph()],
                        ),
                      ),
                      // --------------------------------------------------------- Title
                      Container(
                        child: title(),
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 20),
                      ),
                      // --------------------------------------------------------- Table

                      Container(
                        child: miniTable(),
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(bottom: 250),
                      ),
                    ],
                  ),
                ),

                // --------------------------------------------------------------- Base
                Positioned(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: globalStart == true ? start() : selectState(),
                  ),
                )
              ],
            )
          : table(),
    );
  }
}
