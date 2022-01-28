class Movement {
  // Movement({name, date, import, inbound, outgoing});
  Movement(
      {this.name,
      this.date,
      this.dateParsed,
      this.import,
      this.importParsed,
      this.inbound,
      this.outgoing,
      this.intDate});
  String? name;
  String? date;
  String? import;
  bool? inbound;
  bool? outgoing;
  int? importParsed;
  DateTime? dateParsed;
  int? intDate;
}
