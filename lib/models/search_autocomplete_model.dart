import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SearchAutocompleteModel {
  final int id;
  final String title;
  final String imageType;
  SearchAutocompleteModel({
    required this.id,
    required this.title,
    required this.imageType,
  });

  @override
  String toString() =>
      'SearchAutocompleteModel(id: $id, title: $title, imageType: $imageType)';

  SearchAutocompleteModel copyWith({
    int? id,
    String? title,
    String? imageType,
  }) {
    return SearchAutocompleteModel(
      id: id ?? this.id,
      title: title ?? this.title,
      imageType: imageType ?? this.imageType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'title': title, 'imageType': imageType};
  }

  factory SearchAutocompleteModel.fromMap(Map<String, dynamic> map) {
    return SearchAutocompleteModel(
      id: map['id'],
      title: map['title'],
      imageType: map['imageType'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchAutocompleteModel.fromJson(String source) =>
      SearchAutocompleteModel.fromMap(json.decode(source));
}
