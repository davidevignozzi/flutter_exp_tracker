import 'dart:async';

import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/gloabl.dart';
import 'package:exp_tracker/movementList.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class outgoingGraph extends StatefulWidget {
  @override
  _ougoingGraphState createState() => _ougoingGraphState();
}

class _ougoingGraphState extends State<outgoingGraph> {
  late List<GDPData> _chartData;

  // to refresh every second
  @override
  var timer;
  void initState() {
    _chartData = getChartData();
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
        Container(
          width: 120,
          height: 120,
          child: SfCircularChart(
            series: <CircularSeries>[
              RadialBarSeries<GDPData, int>(
                  innerRadius: "80%",
                  dataSource: _chartData,
                  pointColorMapper: (GDPData data, _) => data.color,
                  xValueMapper: (GDPData data, _) => generalTotalOutgoings,
                  yValueMapper: (GDPData data, _) => generalTotalOutgoings,
                  maximumValue: double.parse(generalTotalInbounds.toString())),
            ],
          ),
        ),
        Text(
          generalTotalOutgoings.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData(generalTotalOutgoings, Palette.myOrange),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.num1, this.color);
  final int num1;
  final Color color;
}
