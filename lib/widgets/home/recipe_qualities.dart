import 'package:flutter/material.dart';

import '../../models/recipe_info_model.dart';
import '../recipe_details/recipe_info_heading.dart';

Map<String, String> extractRecipeQualities(RecipeInfoModel r) {
  final recipeQualities = {
    if (r.veryPopular) "Popular": 'assets/images/recipe_qualities/popular.png',
    if (r.veryHealthy) "Healthy": 'assets/images/recipe_qualities/healthy.png',
    if (r.cheap) "Cheap": 'assets/images/recipe_qualities/cheap.png',
    if (r.vegetarian)
      "Vegetarian": 'assets/images/recipe_qualities/vegetarian.png',
    if (r.vegan) "Vegan": 'assets/images/recipe_qualities/vegan.png',
    if (r.glutenFree)
      "Gluten-Free": 'assets/images/recipe_qualities/gluten-free.png',
    if (r.dairyFree)
      "Dairy-Free": 'assets/images/recipe_qualities/dairy-free.png',
    if (r.sustainable)
      "Sustainable": 'assets/images/recipe_qualities/sustainable.png',
    if (r.lowFodmap)
      "Low-Fodmap": 'assets/images/recipe_qualities/low-fodmap.png',
  };
  return recipeQualities;
}

class RecipeHighlights extends StatelessWidget {
  final RecipeInfoModel recipeInfo;
  const RecipeHighlights({super.key, required this.recipeInfo});

  @override
  Widget build(BuildContext context) {
    final highlightedRecipeQualities = extractRecipeQualities(recipeInfo);
    final recipeHighlightCount = highlightedRecipeQualities.length;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return recipeHighlightCount > 5 || recipeHighlightCount < 3
        ? SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecipeInfoHeading(
                  text: 'Highlights',
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(recipeHighlightCount, (index) {
                      final entry = highlightedRecipeQualities.entries
                          .toList()[index];
                      final quality = entry.key;
                      final imgSrc = entry.value;
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(imgSrc),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            quality,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
          );
  }
}
