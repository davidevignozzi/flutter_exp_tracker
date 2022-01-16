import 'dart:developer';

var movements = [movement];

const movement = {
  "name": String, // nome del movimento;
  "date": DateTime, // data del movimento;
  "inbound": false, // è un movimento in entrata?
  "outgoing": false // è un movimento in uscita?
};

orderMovements() {
  for (var i = 0; i < movements.length; i++) {}
  movements.forEach((element) {
    // element.forEach((key, value) {});
    print(element);
  });
}
