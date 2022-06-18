class DataModel {
  String name;
  String img;
  int price;
  int people;
  int stars;
  String description;
  String location;
  DataModel(
      {this.name,
      this.img,
      this.price,
      this.people,
      this.stars,
      this.description,
      this.location});
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        name: json["name"],
        img: json["img"],
        price: json["price"],
        people: json["people"],
        stars: json["stars"],
        description: json["description"],
        location: json["location"]);
  }
}
