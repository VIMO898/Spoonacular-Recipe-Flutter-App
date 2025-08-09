import 'dart:convert';

import '../constants/enums.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BasicInfoModel {
  final int? id;
  final String name;
  final String? image;
  final ImageSource? imgSource;
  const BasicInfoModel({
    this.id,
    required this.name,
    this.image,
    this.imgSource,
  });

  @override
  String toString() {
    return 'BasicInfoModel(id: $id, name: $name, image: $image, imgSource: $imgSource)';
  }

  BasicInfoModel copyWith({
    int? id,
    String? name,
    String? image,
    ImageSource? imgSource,
  }) {
    return BasicInfoModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      imgSource: imgSource ?? this.imgSource,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'imgSource': imgSource?.index,
    };
  }

  factory BasicInfoModel.fromMap(Map<String, dynamic> map) {
    return BasicInfoModel(
      id: map['id'],
      name: map['name'],
      image: map['image'],
      imgSource: map['imgSource'] != null
          ? ImageSource.values[map['imgSource']]
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BasicInfoModel.fromJson(String source) =>
      BasicInfoModel.fromMap(json.decode(source));

  @override
  bool operator ==(covariant BasicInfoModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.image == image &&
        other.imgSource == imgSource;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ image.hashCode ^ imgSource.hashCode;
  }
}
