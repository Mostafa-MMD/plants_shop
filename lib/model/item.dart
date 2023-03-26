class Item {
  String name;
  String imgPath;
  double price;

  Item({
    required this.name,
    required this.imgPath,
    required this.price,
  });
}

List<Item> items = [
  Item(
    name: 'sycamore',
    imgPath: 'assets/img/1.webp',
    price: 13.00,
  ),
  Item(
    name: 'weeping willow',
    imgPath: 'assets/img/2.webp',
    price: 14.50,
  ),
  Item(
    name: 'maple',
    imgPath: 'assets/img/3.webp',
    price: 11.00,
  ),
  Item(
    name: 'linden',
    imgPath: 'assets/img/4.webp',
    price: 15.00,
  ),
  Item(
    name: 'Dionaea',
    imgPath: 'assets/img/5.webp',
    price: 10.00,
  ),
  Item(
    name: 'beech',
    imgPath: 'assets/img/6.webp',
    price: 18.00,
  ),
  Item(
    name: 'Betula ',
    imgPath: 'assets/img/7.webp',
    price: 17.50,
  ),
  Item(
    name: 'yew',
    imgPath: 'assets/img/8.webp',
    price: 20.00,
  ),
];
