
class FilterItemModel {
  FilterItemModel({
    this.item,
  });

  List<Item>? item;

  factory FilterItemModel.fromJson(Map<String, dynamic> json) => FilterItemModel(
    item: List<Item>.from(json["item"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "item": List<dynamic>.from(item!.map((x) => x.toJson())),
  };
}

class Item {
  Item({
    this.id,
    this.name,
    this.subItem,
  });

  String? id;
  String? name;
  List<SubItem>? subItem;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    name: json["name"],
    subItem: List<SubItem>.from(json["subItem"].map((x) => SubItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "subItem": List<dynamic>.from(subItem!.map((x) => x.toJson())),
  };
}

class SubItem {
  SubItem({
    this.id,
    this.name,
    this.list,
  });

  String? id;
  String? name;
  List<ListElement>? list;

  factory SubItem.fromJson(Map<String, dynamic> json) => SubItem(
    id: json["id"],
    name: json["name"],
    list: List<ListElement>.from(json["list"].map((x) => ListElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "list": List<dynamic>.from(list!.map((x) => x.toJson())),
  };
}

class ListElement {
  ListElement({
    this.id,
    this.name,
  });

  String? id;
  String? name;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
