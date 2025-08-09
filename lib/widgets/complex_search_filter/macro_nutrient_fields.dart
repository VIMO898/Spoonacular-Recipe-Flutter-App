import 'package:flutter/material.dart';

import '../../models/complex_search_filter_model.dart';
import 'categorized_nutrient_fields.dart';
import 'min_max_fields.dart';

class MacroNutrientFields extends StatelessWidget {
  final ComplexSearchFilterModel searchFilters;
  final void Function(Map<String, dynamic> updatedField) onFieldUpdate;
  const MacroNutrientFields({
    super.key,
    required this.searchFilters,
    required this.onFieldUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return CategorizedNutrientFields(
      category: 'Macronutrients',
      fields: [
        MinMaxFields(
          label: 'Carbs',
          fieldKey: 'Carbs',
          allowedMin: 10,
          allowedMax: 100,
          initialMin: searchFilters.minCarbs,
          initialMax: searchFilters.maxCarbs,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Protein',
          fieldKey: 'Protein',
          allowedMin: 10,
          allowedMax: 100,
          initialMin: searchFilters.minProtein,
          initialMax: searchFilters.maxProtein,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Calories',
          fieldKey: 'Calories',
          allowedMin: 50,
          allowedMax: 800,
          initialMin: searchFilters.minCalories,
          initialMax: searchFilters.maxCalories,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Fat',
          fieldKey: 'Fat',
          allowedMin: 1,
          allowedMax: 100,
          initialMin: searchFilters.minFat,
          initialMax: searchFilters.minFat,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Fiber',
          fieldKey: 'Fiber',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minFiber,
          initialMax: searchFilters.minFiber,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Sugar',
          fieldKey: 'Sugar',
          allowedMin: 0,
          allowedMax: 100,
          initialMin: searchFilters.minSugar,
          initialMax: searchFilters.maxSugar,
          onUpdateSearchFilter: onFieldUpdate,
        ),
      ],
    );
  }
}
