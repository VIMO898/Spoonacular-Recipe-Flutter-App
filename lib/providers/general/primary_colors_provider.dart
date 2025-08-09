import 'package:app/models/primary_color_model..dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final primaryColorsProvider = Provider<List<PrimaryColorModel>>(
  (ref) => [
    PrimaryColorModel(
      name: "Crimson Heat",
      color: Color(0xFF800E13), // #800e13 - Deep red
    ),
    PrimaryColorModel(
      name: "Ocean Depth",
      color: Color(0xFF05668D), // #05668d - Cool blue
    ),
    PrimaryColorModel(
      name: "Sunlit Amber",
      color: Color(0xFFFFCB77), // #ffcb77 - Warm yellow-orange
    ),
    PrimaryColorModel(
      name: "Coral Blush",
      color: Color(0xFFFE6D73), // #fe6d73 - Soft coral-pink
    ),
    PrimaryColorModel(
      name: "Sage Forest",
      color: Color(0xFF619B8A), // #619b8a - Muted green
    ),
    PrimaryColorModel(
      name: "Amber Blaze",
      color: Color(0xFFff7d00), // #ff7d00 - Light orange
    ),
  ],
);
