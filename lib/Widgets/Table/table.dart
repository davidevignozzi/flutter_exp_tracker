import 'package:exp_tracker/Widgets/Buttons/inbound.dart';
import 'package:flutter/material.dart';
import '../../Style/palette.dart';
import '../../movementList.dart';

class table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movementsList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 5),
          child: Column(
            children: [
              // --------------------------------------------------------------- Data dell'importo
              Container(
                margin: EdgeInsets.only(top: 21, left: 29),
                alignment: Alignment.centerLeft,
                child: Text(
                  '${movementsList[index].date}',
                  style: TextStyle(
                      color: Palette.myGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 42, right: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // --------------------------------------------------------- Nome dell'importo
                    Container(
                      child: Text(
                        '${movementsList[index].name}',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    // --------------------------------------------------------- Importo
                    Container(
                      child: Text(
                        '${movementsList[index].import}',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: movementsList[index].inbound == true
                              ? Palette.myGreen
                              : Palette.myOrange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
