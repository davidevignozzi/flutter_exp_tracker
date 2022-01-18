import 'package:exp_tracker/Widgets/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class formDate extends StatelessWidget {
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
                onConfirm: (date) {
                  print('confirm $date');
                },
              );
            },
            child: Text('Data'),
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
