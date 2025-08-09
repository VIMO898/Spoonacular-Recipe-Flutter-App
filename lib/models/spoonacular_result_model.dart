import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SpoonacularResultModel<T> {
  final List<T> results;
  final int offset;
  final int number;
  final int totalResults;
  SpoonacularResultModel({
    required this.results,
    required this.offset,
    required this.number,
    required this.totalResults,
  });

  @override
  String toString() {
    return 'SpoonacularResultModel(results: $results, offset: $offset, number: $number, totalResults: $totalResults)';
  }

  SpoonacularResultModel<T> copyWith({
    List<T>? results,
    int? offset,
    int? number,
    int? totalResults,
  }) {
    return SpoonacularResultModel<T>(
      results: results ?? this.results,
      offset: offset ?? this.offset,
      number: number ?? this.number,
      totalResults: totalResults ?? this.totalResults,
    );
  }

  Map<String, dynamic> toMap(Map<String, dynamic> Function(T) toMapT) {
    return <String, dynamic>{
      'results': results.map(toMapT).toList(),
      'offset': offset,
      'number': number,
      'totalResults': totalResults,
    };
  }

  factory SpoonacularResultModel.fromMap(
    Map<String, dynamic> map,
    T Function(Map<String, dynamic>) fromMapT,
  ) {
    return SpoonacularResultModel<T>(
      results: List<Map<String, dynamic>>.from(
        map['results'],
      ).map(fromMapT).toList(),
      offset: map['offset'] as int,
      number: map['number'] as int,
      totalResults: map['totalResults'] as int,
    );
  }

  String toJson(Map<String, dynamic> Function(T) toMapT) =>
      json.encode(toMap(toMapT));

  factory SpoonacularResultModel.fromJson(
    String source,
    T Function(Map<String, dynamic>) fromMapT,
  ) => SpoonacularResultModel.fromMap(json.decode(source), fromMapT);
}
