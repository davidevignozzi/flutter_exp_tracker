class Movement {
  // Movement({name, date, import, inbound, outgoing});
  Movement({
    required this.name,
    required this.date,
    required this.dateParsed,
    required this.import,
    required this.importParsed,
    required this.inbound,
    required this.outgoing,
  });
  String name;
  String date;
  String import;
  bool inbound;
  bool outgoing;
  int importParsed;
  DateTime dateParsed;
}
