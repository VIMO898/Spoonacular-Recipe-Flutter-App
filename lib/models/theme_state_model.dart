import 'dart:convert';

import 'package:app/constants/enums.dart';
import 'package:app/models/primary_color_model..dart';
import 'package:flutter/material.dart';

class ThemeStateModel {
  final String fontFamily;
  final ThemeMode themeMode;
  final bool useSystem;
  final TextScaleLevel textScaleLevel;
  final PrimaryColorModel primaryColor;
  const ThemeStateModel({
    required this.themeMode,
    required this.useSystem,
    required this.textScaleLevel,
    required this.fontFamily,
    required this.primaryColor,
  });

  ThemeStateModel copyWith({
    ThemeMode? themeMode,
    bool? useSystem,
    TextScaleLevel? textScaleLevel,
    String? fontFamily,
    PrimaryColorModel? primaryColor,
  }) {
    return ThemeStateModel(
      themeMode: themeMode ?? this.themeMode,
      useSystem: useSystem ?? this.useSystem,
      fontFamily: fontFamily ?? this.fontFamily,
      textScaleLevel: textScaleLevel ?? this.textScaleLevel,
      primaryColor: primaryColor ?? this.primaryColor,
    );
  }

  @override
  String toString() =>
      'ThemeStateModel(fontFamily: $fontFamily, primaryColor: $primaryColor, themeMode: $themeMode, useSystem: $useSystem, textScaleLevel: $textScaleLevel)';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fontFamily': fontFamily,
      'primaryColor': primaryColor.toMap(),
      'themeMode': themeMode.index,
      'useSystem': useSystem,
      'textScaleLevel': textScaleLevel.index,
    };
  }

  factory ThemeStateModel.fromMap(Map<String, dynamic> map) {
    return ThemeStateModel(
      fontFamily: map['fontFamily'] ?? 'Poppins',
      primaryColor: PrimaryColorModel.fromMap(map['primaryColor']),
      themeMode: ThemeMode.values[map['themeMode'] ?? ThemeMode.system.index],
      useSystem: map['useSystem'] ?? true,
      textScaleLevel: TextScaleLevel
          .values[map['textScaleLevel'] ?? TextScaleLevel.medium.index],
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeStateModel.fromJson(String source) =>
      ThemeStateModel.fromMap(json.decode(source));
}
