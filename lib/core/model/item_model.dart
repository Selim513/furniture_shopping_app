class ItemModel {
  final String? image;
  final String? name;
  final String? reviews;
  final double? price;
  double quantity;

  ItemModel({
    this.reviews,
    required this.quantity,
    required this.image,
    required this.name,
    required this.price,
  });
}

List<ItemModel> items = [
  ItemModel(
      image: 'assets/coffe_table.png',
      name: 'Coffee Table',
      price: 50.00,
      quantity: 0,
      reviews:
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price'),
  ItemModel(
    image: 'assets/lamp.png',
    name: 'Black Simple Lamp',
    price: 12.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/table.png',
    name: 'Minimal Stand',
    price: 25.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/chair.png',
    name: 'Coffe Chair',
    price: 20.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/desk.png',
    name: 'Simple Desk',
    price: 12.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/coffe_table.png',
    name: 'Coffee Table',
    price: 50.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/lamp.png',
    name: 'Black Simple Lamp',
    price: 12.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/table.png',
    name: 'Minimal Stand',
    price: 25.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/chair.png',
    name: 'Coffe Chair',
    price: 20.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/desk.png',
    name: 'Simple Desk',
    price: 12.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/coffe_table.png',
    name: 'Coffee Table',
    price: 50.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/lamp.png',
    name: 'Black Simple Lamp',
    price: 12.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/table.png',
    name: 'Minimal Stand',
    price: 25.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/chair.png',
    name: 'Coffe Chair',
    price: 20.00,
    quantity: 0,
  ),
  ItemModel(
    image: 'assets/desk.png',
    name: 'Simple Desk',
    price: 12.00,
    quantity: 0,
  ),
];
