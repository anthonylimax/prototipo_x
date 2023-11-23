class User {
  User({email, password, acessToken});
  late final String email;
  late final String password;

  User fromJson(Map data) {
    User user = User(email: data["email"], password: data["senha"]);
    return user;
  }
}
