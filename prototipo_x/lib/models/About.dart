class About {
  final int numberOfParticipants;
  final String timeStamp;
  final String local;
  final String name;
  final String profileAdm;
  final String description;

  About(this.numberOfParticipants, this.timeStamp, this.local, this.profileAdm,
      this.description, this.name);

  static FromJSON(Map json) {
    return new About(json["numberOfParticipants"], json["timeStamp"],
        json["local"], json["profileAdm"], json["description"], json["name"]);
  }
}
