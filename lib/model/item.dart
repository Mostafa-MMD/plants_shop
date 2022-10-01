class Item {
  String name;
  String imagePath;
  double price;
  String location;

  Item(
      {required this.name,
      required this.imagePath,
      required this.price,
      this.location = 'Main branch'});
}

final List<Item> items = [
  Item(name: 'Anemone', imagePath: 'assets/img/1.webp', price: 12.99),
  Item(name: 'Apple blossom', imagePath: 'assets/img/2.webp', price: 12.99),
  Item(name: 'Aster', imagePath: 'assets/img/3.webp', price: 12.99),
  Item(name: 'Bird of paradise', imagePath: 'assets/img/4.webp', price: 12.99),
  Item(name: 'Calla lily', imagePath: 'assets/img/5.webp', price: 12.99),
  Item(name: 'Bellflower', imagePath: 'assets/img/6.webp', price: 12.99),
  Item(name: 'Carnation', imagePath: 'assets/img/7.webp', price: 12.99),
  Item(name: 'Bluebells', imagePath: 'assets/img/8.webp', price: 12.99),
];
