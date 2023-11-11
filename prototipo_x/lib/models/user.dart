class User {
  User({user, password, acessToken});
  late final String user;
  late final String password;
  late final String acessToken;

  User fromJson(Map data) {
    User user = User(user: data["email"], password: data["senha"]);
    return user;
  }
}
