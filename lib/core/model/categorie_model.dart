class CategoriesModel {
  String name;
  String image;
  CategoriesModel({
    required this.name,
    required this.image,
  });
}

List<CategoriesModel> Categories = [
  CategoriesModel(name: 'Popular', image: 'assets/star1.svg'),
  CategoriesModel(name: 'Chair', image: 'assets/chair4.svg'),
  CategoriesModel(name: 'Table', image: 'assets/table1.svg'),
  CategoriesModel(name: 'Armchair', image: 'assets/armchair.svg'),
  CategoriesModel(name: 'Bed', image: 'assets/bed1.svg'),
  // CategoriesModel(name: 'Lamp', image: 'assets/lamp.svg'),
];
