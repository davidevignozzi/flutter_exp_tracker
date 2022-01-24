import 'package:exp_tracker/Style/palette.dart';
import 'package:exp_tracker/gloabl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class formDate extends StatefulWidget {
  @override
  formDateState createState() => new formDateState();
}

class formDateState extends State<formDate> {
  // var maxDate = DateFormat('dd-MM-yyyy').format(DateTime.);
  var dateSelected;
  var dateString = 'Data';

  void changeDate(date) {
    setState(() {
      dateString = DateFormat('dd-MM-yyyy').format(date);
      //! GENERAL
      generalDateParsed = date;
      generalDate = dateString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Date Picker
        Container(
          width: 150,
          height: 53,
          child: ElevatedButton(
            onPressed: () {
              DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                minTime: DateTime(2020, 1, 1),
                maxTime: DateTime(2023, 12, 31),
                currentTime: DateTime.now(),
                onConfirm: (dateChanged) {
                  // print('confirm $date');
                  changeDate(dateChanged);
                  print(dateString);
                },
              );
            },
            child: Text('$dateString'),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Palette.myWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
