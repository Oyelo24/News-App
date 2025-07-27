class CategoryModel {
  final int id;
  final String name;
  final String? image;

  CategoryModel({
    required this.id,
    required this.name,
    this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}


/*
id: Category ID.

name: Category name (e.g., Politics, Sports).

image: Sometimes categories have icons/images.
*/