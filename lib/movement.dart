import 'dart:developer';

import 'dart:html';

class Movement {
  // Movement({name, date, import, inbound, outgoing});
  String? name;
  String? date;
  String? import;
  bool? inbound;
  bool? outgoing;
  Movement({this.name, this.date, this.import, this.inbound, this.outgoing});

  factory Movement.fromJson(Map<String, dynamic> json) =>
      _locationFromJson(json);
}

Movement _locationFromJson(Map<String, dynamic> json) {
  return Movement(
    name: json['name'] as String,
    date: json['date'] as String,
    import: json['import'] as String,
    inbound: json['inbound'] as bool,
    outgoing: json['outgoing'] as bool,
  );
}
