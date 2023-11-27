class User {
  late final String userpublicid;
  late final String about;
  late final String name;

  User(this.userpublicid, this.about, this.name);
  static User fromJson(Map data) {
    return new User(data["user_public_id"], data["about"], data["name"]);
  }
}
