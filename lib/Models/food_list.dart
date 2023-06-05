class FoodList {
  final String image;
  final String title;

  const FoodList({
    required this.image,
    required this.title,
  });

  factory FoodList.fromJson(Map<String, dynamic> json) {
    return FoodList(image: json['image'], title: json['title']);
  }
}
