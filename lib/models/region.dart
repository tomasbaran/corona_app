class Region {
  String regionName;
  String confirmed;
  String active;
  String died;
  String recovered;
  var updated;

  Region(
      {this.regionName,
      this.confirmed,
      this.active,
      this.died,
      this.recovered,
      this.updated});
}
