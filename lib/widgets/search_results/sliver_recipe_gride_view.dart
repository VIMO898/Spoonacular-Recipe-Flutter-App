import 'package:app/models/recipe_search_result_model.dart';
import 'package:flutter/material.dart';

import '../general/recipe_overview_card.dart';

class SliverRecipeGridView extends StatelessWidget {
  final List<RecipeSearchResultModel>? searchedRecipes;
  final bool isLoading;
  const SliverRecipeGridView({
    super.key,
    this.isLoading = false,
    required this.searchedRecipes,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 16),
      sliver: SliverGrid.builder(
        itemCount: isLoading ? 10 : searchedRecipes!.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 255,
          crossAxisCount: 2,
          crossAxisSpacing: 14,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final searchedRecipe = !isLoading ? searchedRecipes![index] : null;

          return RecipeOverviewCard(
            isLoading: isLoading,
            rightPadding: 0,
            contentPadding: const EdgeInsets.fromLTRB(12, 22, 12, 25),
            height: 255,
            id: searchedRecipe?.id,
            title: searchedRecipe?.title,
            imgUrl: searchedRecipe?.image,
            // readyInMinutes: readyInMinutes,
          );
        },
      ),
    );
  }
}
