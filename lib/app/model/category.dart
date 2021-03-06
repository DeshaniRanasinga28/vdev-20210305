class Data {
  Data({
    this.data,
  });

  List<Item> data;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: List<Item>.from(json["data"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Item {
  String name;

  Item({
    this.name});

  factory Item.fromJson(Map<String, dynamic> json) => Item(
      name: json["name"]
  );

  Map<String, dynamic> toJson() => {
    "name" : name
  };
}
