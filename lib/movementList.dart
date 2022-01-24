import 'dart:developer';
import 'package:exp_tracker/gloabl.dart';

import 'movement.dart';

List<Movement> movementsList = [];

// create List with last 3 item of the big list.
List<Movement> miniList = movementsList
    .toList()
    .getRange(movementsList.length, movementsList.length - 3)
    .toList();
// movementsList.length - 3, movementsList.length
List<Movement> inbounds = [];
List<Movement> outgoings = [];
