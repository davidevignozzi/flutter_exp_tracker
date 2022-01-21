import 'dart:developer';

import 'dart:html';

class Movement {
  // Movement({name, date, import, inbound, outgoing});
  Movement({this.name, this.date, this.import, this.inbound, this.outgoing});
  String? name;
  String? date;
  String? import;
  bool? inbound;
  bool? outgoing;
}
