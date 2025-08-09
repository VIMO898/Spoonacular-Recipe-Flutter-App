// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app/models/step_instruction_model.dart';

class RecipeInstructionModel {
  final String name;
  final List<StepInstructionModel> steps;

  RecipeInstructionModel({required this.name, required this.steps});

  @override
  String toString() => 'RecipeInstructionModel(name: $name, steps: $steps)';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'steps': steps.map((x) => x.toMap()).toList(),
    };
  }

  factory RecipeInstructionModel.fromMap(Map<String, dynamic> map) {
    return RecipeInstructionModel(
      name: map['name'],
      steps: List<StepInstructionModel>.from(
        (map['steps']).map<StepInstructionModel>(
          (x) => StepInstructionModel.fromMap(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory RecipeInstructionModel.fromJson(String source) =>
      RecipeInstructionModel.fromMap(json.decode(source));
}
