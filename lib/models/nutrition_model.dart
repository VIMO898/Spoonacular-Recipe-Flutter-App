import 'dart:convert';

import 'package:app/models/nutrient_model.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class NutritionModel {
  final String calories;
  final String carbs;
  final String fat;
  final String protein;
  final List<NutrientModel> bad;
  final List<NutrientModel> good;

  NutritionModel({
    required this.calories,
    required this.carbs,
    required this.fat,
    required this.protein,
    required this.bad,
    required this.good,
  });

  @override
  String toString() {
    return 'NutritionModel(calories: $calories, carbs: $carbs, fat: $fat, protein: $protein, good: ${good.toString()}, bad: ${bad.toString()})';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calories': calories,
      'carbs': carbs,
      'fat': fat,
      'protein': protein,
      'bad': bad,
      'good': good,
    };
  }

  factory NutritionModel.fromMap(Map<String, dynamic> map) {
    return NutritionModel(
      calories: map['calories'],
      carbs: map['carbs'],
      fat: map['fat'],
      protein: map['protein'],
      good: List<NutrientModel>.from(
        (map['good']).map((n) => NutrientModel.fromMap(n)).toList(),
      ),
      bad: List<NutrientModel>.from(
        (map['bad']).map((n) => NutrientModel.fromMap(n)).toList(),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory NutritionModel.fromJson(String source) =>
      NutritionModel.fromMap(json.decode(source));
}
