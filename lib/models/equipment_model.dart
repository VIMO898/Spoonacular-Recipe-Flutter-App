import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class EquipmentModel {
  final String name;
  final String image;

  EquipmentModel({required this.name, required this.image});

  @override
  String toString() => 'EquipmentModel(name: $name, image: $image)';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
    };
  }

  factory EquipmentModel.fromMap(Map<String, dynamic> map) {
    return EquipmentModel(
      name: map['name'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EquipmentModel.fromJson(String source) =>
      EquipmentModel.fromMap(json.decode(source));

  EquipmentModel copyWith({
    String? name,
    String? image,
  }) {
    return EquipmentModel(
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }
}
