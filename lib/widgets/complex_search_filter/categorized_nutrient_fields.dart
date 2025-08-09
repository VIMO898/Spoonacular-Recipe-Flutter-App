import 'package:app/widgets/complex_search_filter/min_max_fields.dart';
import 'package:flutter/material.dart';

class CategorizedNutrientFields extends StatelessWidget {
  const CategorizedNutrientFields({
    super.key,
    required this.category,
    required this.fields,
  });

  final String category;
  final List<MinMaxFields> fields;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 26),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.only(bottom: 16),
        title: Text(
          category,
          style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400),
        ),
        collapsedShape: UnderlineInputBorder(borderSide: BorderSide.none),
        shape: UnderlineInputBorder(borderSide: BorderSide.none),
        children: fields,
      ),
    );
  }
}
