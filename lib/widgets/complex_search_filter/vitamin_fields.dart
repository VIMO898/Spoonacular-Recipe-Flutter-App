import 'package:flutter/material.dart';

import '../../models/complex_search_filter_model.dart';
import 'categorized_nutrient_fields.dart';
import 'min_max_fields.dart';

class VitaminFields extends StatelessWidget {
  final ComplexSearchFilterModel searchFilters;
  final void Function(Map<String, dynamic> updatedField) onFieldUpdate;
  const VitaminFields({
    super.key,
    required this.searchFilters,
    required this.onFieldUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return CategorizedNutrientFields(
      category: 'Vitamins',
      fields: [
        MinMaxFields(
          label: 'Vitamin A',
          fieldKey: 'VitaminA',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minVitaminA,
          initialMax: searchFilters.maxVitaminA,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Vitamin C',
          fieldKey: 'VitaminC',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minVitaminC,
          initialMax: searchFilters.maxVitaminC,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Vitamin D',
          fieldKey: 'VitaminD',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minVitaminD,
          initialMax: searchFilters.maxVitaminD,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Vitamin E',
          fieldKey: 'VitaminE',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minVitaminE,
          initialMax: searchFilters.maxVitaminE,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Vitamin K',
          fieldKey: 'VitaminK',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minVitaminK,
          initialMax: searchFilters.maxVitaminK,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Vitamin B1',
          fieldKey: 'VitaminB1',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minVitaminB1,
          initialMax: searchFilters.maxVitaminB1,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Vitamin B2',
          fieldKey: 'VitaminB2',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minVitaminB2,
          initialMax: searchFilters.maxVitaminB2,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Vitamin B5',
          fieldKey: 'VitaminB5',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minVitaminB5,
          initialMax: searchFilters.maxVitaminB5,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Vitamin B6',
          fieldKey: 'VitaminB6',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minVitaminB6,
          initialMax: searchFilters.maxVitaminB6,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Vitamin B12',
          fieldKey: 'VitaminB12',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minVitaminB12,
          initialMax: searchFilters.maxVitaminB12,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Folate',
          fieldKey: 'Folate',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minFolate,
          initialMax: searchFilters.maxFolate,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Folic Acid',
          fieldKey: 'FolicAcid',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minFolicAcid,
          initialMax: searchFilters.maxFolicAcid,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Choline',
          fieldKey: 'Choline',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minCholine,
          initialMax: searchFilters.maxCholine,
          onUpdateSearchFilter: onFieldUpdate,
        ),
      ],
    );
  }
}
