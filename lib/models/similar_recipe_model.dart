import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SimilarRecipeModel {
  final int id;
  final String title;
  final String? image;
  final String imageType;
  final int readyInMinutes;
  final int servings;
  final String sourceUrl;

  SimilarRecipeModel({
    required this.id,
    required this.title,
    required this.image,
    required this.imageType,
    required this.readyInMinutes,
    required this.servings,
    required this.sourceUrl,
  });

  @override
  String toString() {
    return 'SimilarRecipeModel(id: $id, title: $title, image: $image, imageType: $imageType, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'image': image,
      'imageType': imageType,
      'readyInMinutes': readyInMinutes,
      'servings': servings,
      'sourceUrl': sourceUrl,
    };
  }

  factory SimilarRecipeModel.fromMap(Map<String, dynamic> map) {
    return SimilarRecipeModel(
      id: map['id'],
      title: map['title'],
      image: map['image'],
      imageType: map['imageType'],
      readyInMinutes: map['readyInMinutes'],
      servings: map['servings'],
      sourceUrl: map['sourceUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SimilarRecipeModel.fromJson(String source) =>
      SimilarRecipeModel.fromMap(json.decode(source));
}
