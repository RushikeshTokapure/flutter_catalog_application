class Product {
  final String id;
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

final products = [
  Product(
      id: "001",
      name: "Android",
      desc: "Mobile",
      price: 20000,
      color: "#33505a",
      image: "https://images.app.goo.gl/BBfKYTN8JaasVMbm7")
];
