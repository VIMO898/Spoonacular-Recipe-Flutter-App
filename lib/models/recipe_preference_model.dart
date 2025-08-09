// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:app/models/basic_info_model.dart';

class RecipePreferenceModel {
  final List<BasicInfoModel> excludedCuisines;
  final List<BasicInfoModel> excludedIngredients;
  final List<BasicInfoModel> preferredDiets;
  final List<BasicInfoModel> intolerences;
  RecipePreferenceModel({
    required this.excludedCuisines,
    required this.excludedIngredients,
    required this.preferredDiets,
    required this.intolerences,
  });

  @override
  String toString() {
    return 'RecipePreferenceModel(excludedCuisines: $excludedCuisines, excludedIngredients: $excludedIngredients, preferredDiets: $preferredDiets, intolerences: $intolerences)';
  }

  RecipePreferenceModel copyWith({
    List<BasicInfoModel>? excludedCuisines,
    List<BasicInfoModel>? excludedIngredients,
    List<BasicInfoModel>? preferredDiets,
    List<BasicInfoModel>? intolerences,
  }) {
    return RecipePreferenceModel(
      excludedCuisines: excludedCuisines ?? this.excludedCuisines,
      excludedIngredients: excludedIngredients ?? this.excludedIngredients,
      preferredDiets: preferredDiets ?? this.preferredDiets,
      intolerences: intolerences ?? this.intolerences,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedCuisines': excludedCuisines.map((x) => x.toMap()).toList(),
      'excludedIngredients': excludedIngredients.map((x) => x.toMap()).toList(),
      'preferredDiets': preferredDiets.map((x) => x.toMap()).toList(),
      'intolerences': intolerences.map((x) => x.toMap()).toList(),
    };
  }

  factory RecipePreferenceModel.fromMap(Map<String, dynamic> map) {
    return RecipePreferenceModel(
      excludedCuisines: List<BasicInfoModel>.from(
        (map['excludedCuisines']).map<BasicInfoModel>(
          (x) => BasicInfoModel.fromMap(x),
        ),
      ),
      excludedIngredients: List<BasicInfoModel>.from(
        (map['excludedIngredients']).map<BasicInfoModel>(
          (x) => BasicInfoModel.fromMap(x),
        ),
      ),
      preferredDiets: List<BasicInfoModel>.from(
        (map['preferredDiets']).map<BasicInfoModel>(
          (x) => BasicInfoModel.fromMap(x),
        ),
      ),
      intolerences: List<BasicInfoModel>.from(
        (map['intolerences']).map<BasicInfoModel>(
          (x) => BasicInfoModel.fromMap(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory RecipePreferenceModel.fromJson(String source) =>
      RecipePreferenceModel.fromMap(json.decode(source));
}
