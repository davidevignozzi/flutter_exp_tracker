import 'movement.dart';

List<Movement> movementsList = [];
// create List with last 3 item of the big list.
List<Movement> miniList = [];

// movementsList.length - 3, movementsList.length
List<Movement> inbounds = [];
List<Movement> outgoings = [];

// order List
void orderList() {
  if (movementsList.length > 1) {
    movementsList.sort((a, b) => a.dateParsed!.compareTo(b.dateParsed!));
  }
}
