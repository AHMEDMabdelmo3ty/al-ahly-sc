class PlayerModel {
  late int id;
  late String nikename, fullname, image;
  late String birthPlace;
  late String birthDate;
  late String weight;
  late String height;
  late String biography;
  late String matches;
  late String assists;
  late String goals;
  late String playerPlase;

  PlayerModel({
    required this.id,
    required this.nikename,
    required this.fullname,
    required this.image,
    required this.weight,
    required this.height,
    required this.assists,
    required this.biography,
    required this.birthDate,
    required this.birthPlace,
    required this.goals,
    required this.matches,
    required this.playerPlase,
  });

  PlayerModel.fromjsen(Map<String, dynamic> map) {
    id = map["id"];
    nikename = map["nikename"];
    fullname = map["fullname"];
    image = map["image"];
    weight = map["weight"];
    height = map["height"];
    assists = map["assists"];
    birthPlace = map["birthPlace"];
    goals = map["goals"];
    matches = map["matches"];
    birthDate = map["birthDate"];
    playerPlase = map["playerPlase"];

    image = map["image"] != null ? map["image"]['url'] : null;
  }
}
