class Coment {
  late final String user = "Lucas Emanuel";
  late final String interest = "Java";
  late final String descussion =
      "Adoro Flutter, é o framework mais legal que eu já usei";
  late final int likes = 10;
  late final int numComents = 2;
  late final String public_id = "1";
  late final String path =
      "https://pbs.twimg.com/profile_images/653387001635438592/sn1vfI9q_400x400.jpg";

  Coment({user, interest, descussion, likes, numComents, publicid, path});

  Coment fromJson(Map json) {
    Coment c = Coment(
        user: json['user'],
        interest: json['interest'],
        descussion: json['descussion'],
        likes: json['likes'],
        numComents: json['numComents'],
        publicid: json['id'],
        path: json['path']);
    return c;
  }
}
