// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class PrimaryColorModel {
  final String name;
  final Color color;
  const PrimaryColorModel({required this.name, required this.color});
  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'color': color.toARGB32()};
  }

  factory PrimaryColorModel.fromMap(Map<String, dynamic> map) {
    return PrimaryColorModel(name: map['name'], color: Color(map['color']));
  }

  String toJson() => json.encode(toMap());

  factory PrimaryColorModel.fromJson(String source) =>
      PrimaryColorModel.fromMap(json.decode(source));

  @override
  String toString() => 'PrimaryColorModel(name: $name, color: $color)';

  @override
  bool operator ==(covariant PrimaryColorModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.color == color;
  }

  @override
  int get hashCode => name.hashCode ^ color.hashCode;
}
