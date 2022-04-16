class CatalogModel {
  static final products = [
    Product(
        id: 1,
        name: "Android",
        desc: "Mobile",
        price: 20000,
        color: "#33505a",
        image:
            "https://avatars.githubusercontent.com/u/55596957?s=400&u=18e04de64334c6fa3149801e0419f360ef11a239&v=4https://avatars.githubusercontent.com/u/55596957?s=400&u=18e04de64334c6fa3149801e0419f360ef11a239&v=4")
  ];
}

class Product {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Product(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
