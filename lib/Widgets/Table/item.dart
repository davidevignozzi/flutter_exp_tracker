import 'package:flutter/material.dart';
import '../../Style/palette.dart';
import '../../movementList.dart';

class item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 240,
        child: ListView.builder(
          itemCount: movementsList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 25, left: 29),
                    child: Text(
                      '${movementsList[index].date}',
                      style: TextStyle(
                          color: Palette.myGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      left: 42,
                      right: 29,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            '${movementsList[index].name}',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '${movementsList[index].import}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: movementsList[index].inbound == true
                                    ? Palette.myGreen
                                    : Palette.myOrange),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
