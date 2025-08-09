import 'dart:convert';

import 'package:app/models/basic_info_model.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecipeInfoModel {
  final int id;
  final String title;
  final String image;
  final String imageType;
  final String summary;
  final String? instructions;
  final int aggregateLikes;
  final double pricePerServing;
  final int readyInMinutes;
  final int servings;
  final List<BasicInfoModel>? extendedIngredients;
  final bool vegetarian;
  final bool vegan;
  final bool glutenFree;
  final bool dairyFree;
  final bool veryHealthy;
  final bool cheap;
  final bool veryPopular;
  final bool sustainable;
  final bool lowFodmap;
  final double healthScore;
  final double spoonacularScore;
  final String sourceUrl;
  RecipeInfoModel({
    required this.id,
    required this.title,
    required this.image,
    required this.imageType,
    required this.summary,
    required this.instructions,
    required this.aggregateLikes,
    required this.pricePerServing,
    required this.readyInMinutes,
    required this.servings,
    this.extendedIngredients,
    required this.vegetarian,
    required this.vegan,
    required this.glutenFree,
    required this.dairyFree,
    required this.veryHealthy,
    required this.cheap,
    required this.veryPopular,
    required this.sustainable,
    required this.lowFodmap,
    required this.healthScore,
    required this.spoonacularScore,
    required this.sourceUrl,
  });

  @override
  String toString() {
    return 'RecipeInfoModel(id: $id, title: $title, image: $image, imageType: $imageType, summary: $summary, instructions: $instructions, aggregateLikes: $aggregateLikes, pricePerServing: $pricePerServing, readyInMinutes: $readyInMinutes, servings: $servings, extendedIngredients: $extendedIngredients, vegetarian: $vegetarian, vegan: $vegan, glutenFree: $glutenFree, dairyFree: $dairyFree, veryHealthy: $veryHealthy, cheap: $cheap, veryPopular: $veryPopular, sustainable: $sustainable, lowFodmap: $lowFodmap, healthScore: $healthScore, spoonacularScore: $spoonacularScore, sourceUrl: $sourceUrl)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'image': image,
      'imageType': imageType,
      'summary': summary,
      'instructions': instructions,
      'aggregateLikes': aggregateLikes,
      'pricePerServing': pricePerServing,
      'readyInMinutes': readyInMinutes,
      'servings': servings,
      'extendedIngredients': extendedIngredients
          ?.map((x) => x.toMap())
          .toList(),
      'vegetarian': vegetarian,
      'vegan': vegan,
      'glutenFree': glutenFree,
      'dairyFree': dairyFree,
      'veryHealthy': veryHealthy,
      'cheap': cheap,
      'veryPopular': veryPopular,
      'sustainable': sustainable,
      'lowFodmap': lowFodmap,
      'healthScore': healthScore,
      'spoonacularScore': spoonacularScore,
      'sourceUrl': sourceUrl,
    };
  }

  factory RecipeInfoModel.fromMap(Map<String, dynamic> map) {
    return RecipeInfoModel(
      id: map['id'],
      title: map['title'],
      image: map['image'],
      imageType: map['imageType'],
      summary: map['summary'],
      instructions: map['instructions'],
      aggregateLikes: map['aggregateLikes'],
      pricePerServing: map['pricePerServing'],
      readyInMinutes: map['readyInMinutes'],
      servings: map['servings'],
      extendedIngredients: map['extendedIngredients'] != null
          ? List<BasicInfoModel>.from(
              (map['extendedIngredients']).map<BasicInfoModel?>(
                (x) => BasicInfoModel.fromMap(x),
              ),
            )
          : null,
      vegetarian: map['vegetarian'],
      vegan: map['vegan'],
      glutenFree: map['glutenFree'],
      dairyFree: map['dairyFree'],
      veryHealthy: map['veryHealthy'],
      cheap: map['cheap'],
      veryPopular: map['veryPopular'],
      sustainable: map['sustainable'],
      lowFodmap: map['lowFodmap'],
      healthScore: map['healthScore'],
      spoonacularScore: map['spoonacularScore'],
      sourceUrl: map['sourceUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RecipeInfoModel.fromJson(String source) =>
      RecipeInfoModel.fromMap(json.decode(source));

  RecipeInfoModel copyWith({
    int? id,
    String? title,
    String? image,
    String? imageType,
    String? summary,
    String? instructions,
    int? aggregateLikes,
    double? pricePerServing,
    int? readyInMinutes,
    int? servings,
    List<BasicInfoModel>? extendedIngredients,
    bool? vegetarian,
    bool? vegan,
    bool? glutenFree,
    bool? dairyFree,
    bool? veryHealthy,
    bool? cheap,
    bool? veryPopular,
    bool? sustainable,
    bool? lowFodmap,
    double? healthScore,
    double? spoonacularScore,
    String? sourceUrl,
  }) {
    return RecipeInfoModel(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      imageType: imageType ?? this.imageType,
      summary: summary ?? this.summary,
      instructions: instructions ?? this.instructions,
      aggregateLikes: aggregateLikes ?? this.aggregateLikes,
      pricePerServing: pricePerServing ?? this.pricePerServing,
      readyInMinutes: readyInMinutes ?? this.readyInMinutes,
      servings: servings ?? this.servings,
      extendedIngredients: extendedIngredients ?? this.extendedIngredients,
      vegetarian: vegetarian ?? this.vegetarian,
      vegan: vegan ?? this.vegan,
      glutenFree: glutenFree ?? this.glutenFree,
      dairyFree: dairyFree ?? this.dairyFree,
      veryHealthy: veryHealthy ?? this.veryHealthy,
      cheap: cheap ?? this.cheap,
      veryPopular: veryPopular ?? this.veryPopular,
      sustainable: sustainable ?? this.sustainable,
      lowFodmap: lowFodmap ?? this.lowFodmap,
      healthScore: healthScore ?? this.healthScore,
      spoonacularScore: spoonacularScore ?? this.spoonacularScore,
      sourceUrl: sourceUrl ?? this.sourceUrl,
    );
  }
}
