import 'package:app/animations/delayed_display_animation.dart';
import 'package:app/extensions/string_extension.dart';
import 'package:app/models/basic_search_filters_model.dart';
import 'package:app/providers/general/most_searched_recipes_provider.dart';
import 'package:app/screens/search_results_screen.dart';
import 'package:app/utils/nav_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'food_category_pill.dart';

class RecipeCategoryHorizontalListView extends ConsumerWidget {
  final Duration animationDelay;
  const RecipeCategoryHorizontalListView({
    super.key,
    required this.animationDelay,
  });

  @override
  Widget build(BuildContext context, ref) {
    final trendingCardWidth = 125.0;
    final trendingCardHeight = 175.0;
    final mostSearchedRecipeCategories = ref.watch(mostSearchedRecipesProvider);
    return DelayedDisplayAnimation(
      delay: animationDelay,
      duration: const Duration(milliseconds: 1600),
      initialSlidingOffset: const Offset(-0.1, 0),
      child: SizedBox(
        height: trendingCardHeight,
        child: ListView.builder(
          itemCount: mostSearchedRecipeCategories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final category = mostSearchedRecipeCategories[index];
            final isLastIndex =
                (mostSearchedRecipeCategories.length - 1) == index;
            return FoodCategoryPill(
              onTap: () => NavHelper.push(
                context,
                SearchResultsScreen.random(
                  title: category.name.toCapitalizeFirstLetter(),
                  searchQuery: category.name,
                  searchFilters: BasicSearchFiltersModel(),
                ),
              ),
              width: trendingCardWidth,
              height: trendingCardHeight,
              isLastIndex: isLastIndex,
              category: category,
            );
          },
        ),
      ),
    );
  }
}
