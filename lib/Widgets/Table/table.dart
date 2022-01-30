import 'package:exp_tracker/Widgets/Buttons/close.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../../Style/palette.dart';
import '../../movementList.dart';

class table extends StatefulWidget {
  @override
  _tableState createState() => _tableState();
}

class _tableState extends State<table> {
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

// TODO REMOVE ITEMS
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25, top: 10),
            alignment: Alignment.centerLeft,
            child: close(),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              'I tuoi movimenti',
              style: TextStyle(
                  fontSize: 26,
                  color: Palette.myBg,
                  fontWeight: FontWeight.w700),
            ),
          ),
          movementsList.length >= 1
              ? SizedBox(
                  height: 645,
                  child: ListView.builder(
                      itemCount: movementsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, left: 29, bottom: 13),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '${movementsList[index].date}',
                                      style: TextStyle(
                                        color: Palette.myGrey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 13),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 43),
                                          child: Text(
                                            '${movementsList[index].name}',
                                            style: TextStyle(
                                                color: Palette.myBg,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 29),
                                          child: Text(
                                            '${movementsList[index].import}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: movementsList[index]
                                                            .inbound ==
                                                        true
                                                    ? Palette.myGreen
                                                    : Palette.myOrange),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                )
              : Container(),
        ],
      )),
    );
  }
}
