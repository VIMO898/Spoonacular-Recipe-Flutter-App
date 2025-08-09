import 'package:app/constants/enums.dart';
import 'package:app/extensions/string_extension.dart';
import 'package:app/providers/general/common_ingredients_provider.dart';
import 'package:app/widgets/general/selectable_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/basic_info_model.dart';
import '../providers/controllers/recipe_preference_controller_provider.dart';

class ExcludeIngredientScreen extends ConsumerWidget {
  const ExcludeIngredientScreen({super.key});

  void _handleExcludeIngredient(WidgetRef ref, BasicInfoModel ingredient) {
    ref
        .read(recipePreferenceControllerProvider.notifier)
        .toggleIngredient(ingredient);
  }

  @override
  Widget build(BuildContext context, ref) {
    final textTheme = Theme.of(context).textTheme;
    final categorizedIngredients = ref.watch(categorizedIngredientsProvider);
    final excludedIngredients = ref
        .watch(recipePreferenceControllerProvider)
        .excludedIngredients;
    return Scaffold(
      appBar: AppBar(title: Text('Exclude Ingredients')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 6, 16, 16),
        child: Column(
          children: List.generate(categorizedIngredients.length, (index) {
            final ingredientCategory = categorizedIngredients[index];
            return Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        ingredientCategory.img,
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          ingredientCategory.name.toCamelCase(),
                          style: textTheme.titleMedium,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ...List.generate(ingredientCategory.ingredients.length, (i) {
                    final ingredient = ingredientCategory.ingredients[i];
                    final info = BasicInfoModel(
                      name: ingredient.name,
                      image: ingredient.image,
                      imgSource: ImageSource.network,
                    );
                    return SelectableListTile(
                      info,
                      isSelected: excludedIngredients.contains(ingredient),
                      onSelect: (_) =>
                          _handleExcludeIngredient(ref, ingredient),
                    );
                  }),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
