import 'package:exp_tracker/Widgets/Buttons/close.dart';
import 'package:exp_tracker/Widgets/Buttons/inbound.dart';
import 'package:exp_tracker/Widgets/Buttons/outgoing.dart';
import 'package:exp_tracker/Widgets/Table/item.dart';
import 'package:exp_tracker/gloabl.dart';
import 'package:exp_tracker/movement.dart';
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
                        final item = movementsList[index];
                        return Dismissible(
                          background: Container(
                            child: Container(
                              margin: EdgeInsets.only(right: 30),
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                            alignment: Alignment.centerRight,
                            color: Palette.myRed,
                          ),
                          direction: DismissDirection.endToStart,
                          onDismissed: (direction) {
                            setState(() {
                              // remove from movementList
                              movementsList.removeAt(index);

                              // if movement to delete is in inbounds[],
                              // delete item from inbounds
                              if (item.inbound == true) {
                                generalTotalInbounds =
                                    generalTotalInbounds - item.importParsed;
                                generalTotal = generalTotal - item.importParsed;
                                for (var mov in inbounds) {
                                  if (item == mov) {
                                    inbounds.remove(mov);
                                    return;
                                  }
                                }
                              }

                              // if movement to delete is in outgoings[],
                              // delete item from outgoings
                              if (item.outgoing == true) {
                                generalTotalOutgoings =
                                    generalTotalOutgoings - item.importParsed;
                                generalTotal = generalTotal + item.importParsed;
                                for (var mov in outgoings) {
                                  if (item == mov) {
                                    outgoings.remove(mov);
                                    return;
                                  }
                                }
                              }
                            });
                          },
                          key: ObjectKey(item),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, left: 29, bottom: 13),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '${item.date}',
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
                                            '${item.name}',
                                            style: TextStyle(
                                                color: Palette.myBg,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 29),
                                          child: Text(
                                            '${item.import}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: item.inbound == true
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
