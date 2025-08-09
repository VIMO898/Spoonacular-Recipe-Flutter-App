import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecipeSearchResultModel {
  final int id;
  final String title;
  final String image;
  final String imageType;

  RecipeSearchResultModel({
    required this.id,
    required this.title,
    required this.image,
    required this.imageType,
  });

  @override
  String toString() =>
      'RecipeSearchResultModel(id: $id, title: $title, imageType: $imageType, image: $image)';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'imageType': imageType,
      'image': image,
    };
  }

  factory RecipeSearchResultModel.fromMap(Map<String, dynamic> map) {
    return RecipeSearchResultModel(
      id: map['id'],
      title: map['title'],
      imageType: map['imageType'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RecipeSearchResultModel.fromJson(String source) =>
      RecipeSearchResultModel.fromMap(json.decode(source));
}
