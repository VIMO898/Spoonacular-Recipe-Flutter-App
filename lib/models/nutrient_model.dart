import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class NutrientModel {
  final String title;
  final String amount;
  final bool indented;
  final num percentOfDailyNeeds;
  const NutrientModel({
    required this.title,
    required this.amount,
    required this.indented,
    required this.percentOfDailyNeeds,
  });

  @override
  String toString() {
    return 'NutrientModel(title: $title, amount: $amount, indented: $indented, percentOfDailyNeeds: $percentOfDailyNeeds)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'amount': amount,
      'indented': indented,
      'percentOfDailyNeeds': percentOfDailyNeeds,
    };
  }

  factory NutrientModel.fromMap(Map<String, dynamic> map) {
    return NutrientModel(
      title: map['title'],
      amount: map['amount'],
      indented: map['indented'],
      percentOfDailyNeeds: map['percentOfDailyNeeds'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NutrientModel.fromJson(String source) =>
      NutrientModel.fromMap(json.decode(source));
}
