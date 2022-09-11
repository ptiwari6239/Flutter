class CatalogModel {
  static final items = [
    Item(01, "iphone 12 max", "Apple iphone max pro", 999, "#33505a")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;

  Item(this.id, this.name, this.desc, this.price, this.color);
}
