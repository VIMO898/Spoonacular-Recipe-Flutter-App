import 'package:app/widgets/complex_search_filter/categorized_nutrient_fields.dart';
import 'package:flutter/material.dart';

import '../../models/complex_search_filter_model.dart';
import 'min_max_fields.dart';

class OtherFields extends StatelessWidget {
  final ComplexSearchFilterModel searchFilters;
  final void Function(Map<String, dynamic> updatedField) onFieldUpdate;
  const OtherFields({
    super.key,
    required this.searchFilters,
    required this.onFieldUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return CategorizedNutrientFields(
      category: 'Others',
      fields: [
        MinMaxFields(
          label: 'Alcohol',
          fieldKey: 'Alcohol',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minAlcohol,
          initialMax: searchFilters.maxAlcohol,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Caffeine',
          fieldKey: 'Caffeine',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minCaffeine,
          initialMax: searchFilters.maxCaffeine,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Cholesterol',
          fieldKey: 'Cholesterol',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minCholesterol,
          initialMax: searchFilters.maxCholesterol,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'SaturatedFat',
          fieldKey: 'SaturatedFat',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minSaturatedFat,
          initialMax: searchFilters.maxSaturatedFat,
          onUpdateSearchFilter: onFieldUpdate,
        ),
      ],
    );
  }
}
