import 'dart:developer';
import 'package:exp_tracker/movementList.dart';
import 'movement.dart';

// create List with last 3 item of the big list.
List<Movement> miniList = movementsList
    .getRange(movementsList.length - 3, movementsList.length)
    .toList();
