// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app/models/equipment_model.dart';
import 'package:app/models/step_length_model.dart';

import 'basic_info_model.dart';

class StepInstructionModel {
  final int number;
  final String step;
  final List<BasicInfoModel> ingredients;
  final List<EquipmentModel> equipment;
  final StepLengthModel? length;

  StepInstructionModel({
    required this.number,
    required this.step,
    required this.ingredients,
    required this.equipment,
    this.length,
  });

  @override
  String toString() {
    return 'StepInstructionModel(number: $number, step: $step, ingredients: $ingredients, equipment: $equipment, length: $length)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'step': step,
      'ingredients': ingredients.map((x) => x.toMap()).toList(),
      'equipment': equipment.map((x) => x.toMap()).toList(),
      'length': length?.toMap(),
    };
  }

  factory StepInstructionModel.fromMap(Map<String, dynamic> map) {
    return StepInstructionModel(
      number: map['number'],
      step: map['step'],
      ingredients: List<BasicInfoModel>.from(
        (map['ingredients']).map<BasicInfoModel>(
          (x) => BasicInfoModel.fromMap(x),
        ),
      ),
      equipment: List<EquipmentModel>.from(
        (map['equipment']).map<EquipmentModel>(
          (x) => EquipmentModel.fromMap(x),
        ),
      ),
      length: map['length'] != null
          ? StepLengthModel.fromMap(map['length'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StepInstructionModel.fromJson(String source) =>
      StepInstructionModel.fromMap(json.decode(source));
}
