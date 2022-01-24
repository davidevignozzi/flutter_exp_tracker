import 'dart:developer';
import 'package:exp_tracker/genarlVariables.dart';

import 'movement.dart';

List<Movement> movementsList = [];

// create List with last 3 item of the big list.

List<Movement> miniList = movementsList.toList();
// movementsList.length - 3, movementsList.length
List<Movement> inbounds = [];
List<Movement> outgoings = [];

void getInbounds() {
  for (var i in movementsList) {
    if (i.inbound == true) {
      inbounds.add(i);
    }
  }
}

void getOutgoings() {
  for (var i in movementsList) {
    if (i.outgoing == true) {
      outgoings.add(i);
    }
  }
}

void getTotal() {
  for (var i in movementsList) {
    generalTotal += i.import;
  }
}

void orderListByDate() {}
