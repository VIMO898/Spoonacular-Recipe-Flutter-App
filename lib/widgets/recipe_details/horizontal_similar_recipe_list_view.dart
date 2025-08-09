import 'package:flutter/material.dart';

import '../../models/similar_recipe_model.dart';
import 'recipe_info_heading.dart';
import '../general/recipe_overview_card.dart';

class HorizontalSimilarRecipeListView extends StatelessWidget {
  const HorizontalSimilarRecipeListView(this.similarRecipes, {super.key});

  final List<SimilarRecipeModel> similarRecipes;

  @override
  Widget build(BuildContext context) {
    final cardWidth = 230.0;
    final cardHeight = 260.0;
    return Padding(
      padding: const EdgeInsets.only(left: 12, bottom: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RecipeInfoHeading(
            text: 'Similar items',
            // fontSize: 23,
          ),
          SizedBox(
            height: cardHeight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: similarRecipes.length,
              itemBuilder: (context, index) {
                final similarRecipe = similarRecipes[index];
                final recipeImgUrl =
                    'https://img.spoonacular.com/recipes/${similarRecipe.id}-240x150.${similarRecipe.imageType}';
                return RecipeOverviewCard(
                  rightPadding: 12,
                  width: cardWidth,
                  height: cardHeight,
                  id: similarRecipe.id,
                  title: similarRecipe.title,
                  imgUrl: recipeImgUrl,
                  readyInMinutes: similarRecipe.readyInMinutes,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
