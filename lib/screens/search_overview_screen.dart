import 'package:app/constants/enums.dart';
import 'package:app/extensions/string_extension.dart';
import 'package:app/models/basic_info_model.dart';
import 'package:app/models/basic_search_filters_model.dart';
import 'package:app/providers/general/all_diet_provider.dart';
import 'package:app/providers/general/all_recipe_cuisines_provider.dart';
import 'package:app/providers/general/all_recipe_types_provider.dart';
import 'package:app/screens/search_categorized_list_view_screen.dart';
import 'package:app/screens/search_results_screen.dart';
import 'package:app/screens/search_screen.dart';
import 'package:app/widgets/general/search_field.dart';
import 'package:app/widgets/search_overview/search_tile_list_view.dart';
import 'package:app/widgets/search_overview/popular_search_chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/general/most_searched_recipes_provider.dart';
import '../utils/nav_helper.dart';

enum SingleSearchType { diet, mealType, cuisine, query }

class SearchOverviewScreen extends ConsumerWidget {
  const SearchOverviewScreen({super.key});

  void _handleNavigationToSearchScreen(BuildContext context) {
    NavHelper.push(context, SearchScreen());
  }

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context);
    final mostSearchedRecipes = ref.watch(mostSearchedRecipesProvider);
    final recipeTypes = ref.watch(allRecipeTypesProvider);
    final diet = ref.watch(allDietProvider);
    final cuisines = ref.watch(allRecipeCuisinesProvider);
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchField(
              searchIconColor: theme.primaryColor,
              paddingOutside: const EdgeInsets.only(top: 18),
              readOnly: true,
              onTap: () => _handleNavigationToSearchScreen(context),
            ),
            _buildHeadingText(
              context: context,
              text: 'Most Popular Searches By People',
              padding: const EdgeInsets.only(top: 25, bottom: 20),
            ),
            PopularSearchChips(
              mostSearchedRecipes,
              (recipe) => NavHelper.push(
                context,
                SearchResultsScreen.random(
                  title: recipe.name.toCapitalizeFirstLetter(),
                  searchQuery: recipe.name,
                  searchFilters: BasicSearchFiltersModel(),
                ),
              ),
            ),
            const SizedBox(height: 12),
            _buildSearchCategoryTileListView(
              context,
              323,
              title: 'Diet',
              tileType: SearchCategoryTileType.normal,
              imgSource: ImageSource.asset,
              categories: diet,
              searchType: SingleSearchType.diet,
            ),
            _buildSearchCategoryTileListView(
              context,
              376,
              animationDelay: const Duration(milliseconds: 200),
              title: 'Recipe Types',
              tileType: SearchCategoryTileType.custom,
              categories: recipeTypes,
              searchType: SingleSearchType.mealType,
            ),
            _buildSearchCategoryTileListView(
              context,
              376,
              animationDelay: const Duration(milliseconds: 300),
              title: 'Cuisines',
              tileType: SearchCategoryTileType.custom,
              categories: cuisines,
              searchType: SingleSearchType.cuisine,
            ),
          ],
        ),
      ),
    );
  }

  SearchCategoryTileListView _buildSearchCategoryTileListView(
    BuildContext context,
    double height, {
    Duration? animationDelay,
    SearchCategoryTileType tileType = SearchCategoryTileType.custom,
    ImageSource imgSource = ImageSource.network,
    required SingleSearchType searchType,
    required String title,
    required List<BasicInfoModel> categories,
  }) {
    final animationDuration = Duration(milliseconds: 1200);
    void handleTileTap(BasicInfoModel c) {
      late BasicSearchFiltersModel searchFilters;
      switch (searchType) {
        case SingleSearchType.diet:
          final selectedDiet = Diet.values.firstWhere((d) => d.name == c.name);
          searchFilters = BasicSearchFiltersModel(diet: [selectedDiet]);
        case SingleSearchType.mealType:
          final selectedMealType = RecipeType.values.firstWhere(
            (r) => r.name == c.name,
          );
          searchFilters = BasicSearchFiltersModel(type: selectedMealType);
        case SingleSearchType.cuisine:
          final selectedCuisine = Cuisine.values.firstWhere(
            (cuisine) => cuisine.name == c.name,
          );
          searchFilters = BasicSearchFiltersModel(cuisine: [selectedCuisine]);
        case SingleSearchType.query:
          null;
      }
      NavHelper.push(
        context,
        SearchResultsScreen.random(
          title: c.name.toCamelCase(),
          searchFilters: searchFilters,
        ),
      );
    }

    return SearchCategoryTileListView(
      height: height,
      animationDuration: animationDuration,
      animationDelay: animationDelay ?? Duration.zero,
      imgSource: imgSource,
      tileType: tileType,
      headingText: title,
      searchCategories: categories,
      onItemTap: handleTileTap,
      onMore: () => NavHelper.push(
        context,
        SearchCategoriesListViewScreen(
          title: title,
          tileType: tileType,
          categories: categories,
          onTileTap: handleTileTap,
          imageSource: imgSource,
        ),
      ),
    );
  }

  Widget _buildHeadingText({
    required BuildContext context,
    required String text,
    required EdgeInsets padding,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: padding,
      child: Text(text, style: textTheme.headlineSmall),
    );
  }
}
