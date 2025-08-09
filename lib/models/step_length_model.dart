import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class StepLengthModel {
  final int number;
  final String unit;

  StepLengthModel({required this.number, required this.unit});

  @override
  String toString() => 'StepLengthModel(number: $number, unit: $unit)';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'unit': unit,
    };
  }

  factory StepLengthModel.fromMap(Map<String, dynamic> map) {
    return StepLengthModel(
      number: map['number'],
      unit: map['unit'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StepLengthModel.fromJson(String source) =>
      StepLengthModel.fromMap(json.decode(source));
}
