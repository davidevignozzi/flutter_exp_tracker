import 'package:exp_tracker/movementList.dart';
import 'package:flutter/material.dart';
import '../../Style/palette.dart';

class table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movementList.length,
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
                  '$movementList[index].date',
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
                        'Nome',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    // --------------------------------------------------------- Importo
                    Container(
                      child: Text(
                        '10€',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Palette.myOrange),
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
