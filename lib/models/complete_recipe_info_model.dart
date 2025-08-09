// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app/models/nutrition_model.dart';

import 'equipment_model.dart';
import 'recipe_info_model.dart';
import 'similar_recipe_model.dart';

class CompleteRecipeInfoModel {
  final RecipeInfoModel recipeInfo;
  final List<SimilarRecipeModel>? similarRecipes;
  final List<EquipmentModel> recipeEquipment;
  final NutritionModel nutrient;

  const CompleteRecipeInfoModel({
    required this.recipeInfo,
    required this.similarRecipes,
    required this.recipeEquipment,
    required this.nutrient,
  });

  @override
  String toString() {
    return 'CompleteRecipeInfoModel(recipeInfo: $recipeInfo, similarRecipes: $similarRecipes, recipeEquipment: $recipeEquipment, nutrient: $nutrient)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recipeInfo': recipeInfo.toMap(),
      'similarRecipes': similarRecipes?.map((x) => x.toMap()).toList(),
      'recipeEquipment': recipeEquipment.map((x) => x.toMap()).toList(),
      'nutrient': nutrient.toMap(),
    };
  }

  factory CompleteRecipeInfoModel.fromMap(Map<String, dynamic> map) {
    return CompleteRecipeInfoModel(
      recipeInfo: RecipeInfoModel.fromMap(map['recipeInfo']),
      similarRecipes: map['similarRecipes'] != null
          ? List<SimilarRecipeModel>.from(
              (map['similarRecipes']).map<SimilarRecipeModel>(
                (x) => SimilarRecipeModel.fromMap(x),
              ),
            )
          : null,
      recipeEquipment: List<EquipmentModel>.from(
        (map['recipeEquipment']).map<EquipmentModel>(
          (x) => EquipmentModel.fromMap(x),
        ),
      ),
      nutrient: NutritionModel.fromMap(map['nutrient']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CompleteRecipeInfoModel.fromJson(String source) =>
      CompleteRecipeInfoModel.fromMap(json.decode(source));

  CompleteRecipeInfoModel copyWith({
    RecipeInfoModel? recipeInfo,
    List<SimilarRecipeModel>? similarRecipes,
    List<EquipmentModel>? recipeEquipment,
    NutritionModel? nutrient,
  }) {
    return CompleteRecipeInfoModel(
      recipeInfo: recipeInfo ?? this.recipeInfo,
      similarRecipes: similarRecipes ?? this.similarRecipes,
      recipeEquipment: recipeEquipment ?? this.recipeEquipment,
      nutrient: nutrient ?? this.nutrient,
    );
  }
}
