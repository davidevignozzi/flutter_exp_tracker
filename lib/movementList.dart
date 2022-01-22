import 'dart:developer';
import 'package:exp_tracker/genarlVariables.dart';

import 'movement.dart';

List<Movement> movementsList = [
  Movement(
    name: '1',
    date: '01/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: true,
    outgoing: false,
  ),
  Movement(
    name: '2',
    date: '01/02/2022',
    dateParsed: DateTime.now(),
    import: '50€',
    importParsed: 50,
    inbound: true,
    outgoing: false,
  ),
  Movement(
    name: '3',
    date: '02/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: false,
    outgoing: true,
  ),
  Movement(
    name: '4',
    date: '02/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: false,
    outgoing: true,
  ),
  Movement(
    name: '5',
    date: '01/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: true,
    outgoing: false,
  ),
  Movement(
    name: '6',
    date: '01/02/2022',
    dateParsed: DateTime.now(),
    import: '50€',
    importParsed: 50,
    inbound: true,
    outgoing: false,
  ),
  Movement(
    name: '7',
    date: '02/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: false,
    outgoing: true,
  ),
  Movement(
    name: '8',
    date: '02/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: false,
    outgoing: true,
  ),
  Movement(
    name: '9',
    date: '01/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: true,
    outgoing: false,
  ),
  Movement(
    name: '10',
    date: '01/02/2022',
    dateParsed: DateTime.now(),
    import: '50€',
    importParsed: 50,
    inbound: true,
    outgoing: false,
  ),
  Movement(
    name: '11',
    date: '02/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: false,
    outgoing: true,
  ),
  Movement(
    name: '12',
    date: '02/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: false,
    outgoing: true,
  ),
  Movement(
    name: '13',
    date: '01/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: true,
    outgoing: false,
  ),
  Movement(
    name: '15',
    date: '01/02/2022',
    dateParsed: DateTime.now(),
    import: '50€',
    importParsed: 50,
    inbound: true,
    outgoing: false,
  ),
  Movement(
    name: '16',
    date: '02/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: false,
    outgoing: true,
  ),
  Movement(
    name: '17',
    date: '02/02/2022',
    dateParsed: DateTime.now(),
    import: '100€',
    importParsed: 100,
    inbound: false,
    outgoing: true,
  ),
];

// create List with last 3 item of the big list.
List<Movement> miniList = movementsList
    .getRange(movementsList.length - 3, movementsList.length)
    .toList();

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
