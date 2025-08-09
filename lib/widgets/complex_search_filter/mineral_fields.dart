import 'package:app/models/complex_search_filter_model.dart';
import 'package:app/widgets/complex_search_filter/categorized_nutrient_fields.dart';
import 'package:flutter/material.dart';

import 'min_max_fields.dart';

class MineralFields extends StatelessWidget {
  final ComplexSearchFilterModel searchFilters;
  final void Function(Map<String, dynamic> updatedField) onFieldUpdate;
  const MineralFields({
    super.key,
    required this.searchFilters,
    required this.onFieldUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return CategorizedNutrientFields(
      category: 'Minerals',
      fields: [
        MinMaxFields(
          label: 'Calcium',
          fieldKey: 'Calcium',
          initialMin: searchFilters.minCalcium,
          initialMax: searchFilters.maxCalcium,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Copper',
          fieldKey: 'Copper',
          initialMin: searchFilters.minCopper,
          initialMax: searchFilters.maxCopper,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Iron',
          fieldKey: 'Iron',
          initialMin: searchFilters.minIron,
          initialMax: searchFilters.maxIron,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Iodine',
          fieldKey: 'Iodine',
          initialMin: searchFilters.minIodine,
          initialMax: searchFilters.maxIodine,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Zinc',
          fieldKey: 'Zinc',
          initialMin: searchFilters.minZinc,
          initialMax: searchFilters.maxZinc,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Magnesium',
          fieldKey: 'Magnesium',
          initialMin: searchFilters.minMagnesium,
          initialMax: searchFilters.maxMagnesium,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),

        MinMaxFields(
          label: 'Potassium',
          fieldKey: 'Potassium',
          initialMin: searchFilters.minPotassium,
          initialMax: searchFilters.maxPotassium,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Phosphorus',
          fieldKey: 'Phosphorus',
          initialMin: searchFilters.minPhosphorus,
          initialMax: searchFilters.maxPhosphorus,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Sodium',
          fieldKey: 'Sodium',
          initialMin: searchFilters.minSodium,
          initialMax: searchFilters.maxSodium,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Manganese',
          fieldKey: 'Manganese',
          initialMin: searchFilters.minManganese,
          initialMax: searchFilters.maxManganese,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Selenium',
          fieldKey: 'Selenium',
          initialMin: searchFilters.minSelenium,
          initialMax: searchFilters.maxSelenium,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
        MinMaxFields(
          label: 'Fluoride',
          fieldKey: 'Fluoride',
          initialMin: searchFilters.minFluoride,
          initialMax: searchFilters.maxFluoride,
          allowedMin: 0,
          allowedMax: 100,
          onUpdateSearchFilter: onFieldUpdate,
        ),
      ],
    );
  }
}
