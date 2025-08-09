import 'package:app/animations/delayed_display_animation.dart';
import 'package:app/models/basic_search_filters_model.dart';
import 'package:app/providers/repositories/spoonacular_repository_provider.dart';
import 'package:app/repositories/spoonacular_repository.dart';
import 'package:app/screens/search_results_screen.dart';
import 'package:app/screens/search_screen.dart';
import 'package:app/utils/nav_helper.dart';
import 'package:app/widgets/home/home_vertical_recipes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/enums.dart';
import '../constants/recipe_sort_enum.dart';
import '../widgets/home/recipe_category_horizontal_list_view.dart';
import '../widgets/general/search_field.dart';
import '../widgets/home/home_horizontal_recipes.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void _handleNavigationToSearchScreen(BuildContext context) {
    NavHelper.push(context, SearchScreen());
  }

  @override
  Widget build(BuildContext context, ref) {
    final repo = ref.watch(spoonacularRepositoryProvider);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    const animationDuration = Duration(milliseconds: 1600);
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            DelayedDisplayAnimation(
              duration: animationDuration,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Simple way to find\nTasty food',
                  style: textTheme.headlineLarge,
                  maxLines: 2,
                ),
              ),
            ),
            // Pill-shaped popular search recipe category list view
            const RecipeCategoryHorizontalListView(
              animationDelay: Duration(milliseconds: 200),
            ),
            // search field
            DelayedDisplayAnimation(
              duration: animationDuration,
              delay: const Duration(milliseconds: 400),
              child: SearchField(
                readOnly: true,
                paddingOutside: const EdgeInsets.symmetric(
                  vertical: 35,
                  horizontal: 6,
                ),
                onTap: () => _handleNavigationToSearchScreen(context),
              ),
            ),

            // horizontal & vertical random recipes for discovery
            _buildHorizontalRecipes(
              context,
              repo,
              title: 'Trending Recipes Right Now',
              filters: BasicSearchFiltersModel(
                type: RecipeType.mainCourse,
                sort: RecipeSort.random,
                sortDirection: SortDirection.desc,
              ),
            ),
            _buildVerticalRecipes(
              context,
              repo,
              title: 'Popular Breakfast Recipes',
              query: 'breakfast',
              filters: BasicSearchFiltersModel(
                type: RecipeType.breakfast,
                sortDirection: SortDirection.desc,
              ),
            ),
            _buildVerticalRecipes(
              context,
              repo,
              title: 'Healthy Vegetarian Meals',
              filters: BasicSearchFiltersModel(
                diet: [
                  Diet.vegetarian,
                  Diet.vegan,
                  Diet.lactoVegetarian,
                  Diet.ovoVegetarian,
                ],
                sort: RecipeSort.healthiness,
                sortDirection: SortDirection.desc,
              ),
            ),
            _buildHorizontalRecipes(
              context,
              repo,
              title: 'Quick & Easy Dinners',
              query: 'dinner',
              filters: BasicSearchFiltersModel(
                type: RecipeType.mainCourse,
                maxReadyTime: 30,
                sort: RecipeSort.time,
                sortDirection: SortDirection.desc,
              ),
            ),
            _buildVerticalRecipes(
              context,
              repo,
              title: 'Kid-Friendly Snacks',
              query: 'snack',
              filters: BasicSearchFiltersModel(
                type: RecipeType.snack,
                sortDirection: SortDirection.desc,
              ),
            ),
            _buildVerticalRecipes(
              context,
              repo,
              title: 'Budget-Friendly Meals',
              filters: BasicSearchFiltersModel(
                sort: RecipeSort.price,
                sortDirection: SortDirection.asc,
              ),
            ),
            _buildHorizontalRecipes(
              context,
              repo,
              title: 'High-Protein Recipes',
              filters: BasicSearchFiltersModel(sort: RecipeSort.protein),
            ),
            _buildVerticalRecipes(
              context,
              repo,
              title: 'Low-Carb Dinner Ideas',
              filters: BasicSearchFiltersModel(
                sort: RecipeSort.carbohydrates,
                sortDirection: SortDirection.asc,
              ),
            ),
            _buildVerticalRecipes(
              context,
              repo,
              title: 'Gluten-Free Comfort Foods',
              filters: BasicSearchFiltersModel(
                intolerances: [Intolerence.gluten],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerticalRecipes(
    BuildContext context,
    BaseSpoonacularRepository repo, {
    required String title,
    required BasicSearchFiltersModel filters,
    String? query,
  }) {
    return HomeVerticalRecipes(
      title: title,
      recipesFutureBuilder: () =>
          repo.searchRecipesWithBasicFilters(query: query, filters: filters),
      onViewMore: () {
        NavHelper.push(
          context,
          SearchResultsScreen.random(
            title: title,
            searchQuery: query,
            searchFilters: filters,
          ),
        );
      },
    );
  }

  Widget _buildHorizontalRecipes(
    BuildContext context,
    BaseSpoonacularRepository repo, {
    required String title,
    required BasicSearchFiltersModel filters,
    String? query,
  }) {
    return HomeHorizontalRecipes(
      title: title,
      recipesFutureBuilder: () =>
          repo.searchRecipesWithBasicFilters(query: query, filters: filters),
      onViewMore: () {
        NavHelper.push(
          context,
          SearchResultsScreen.random(
            title: title,
            searchQuery: query,
            searchFilters: filters,
          ),
        );
      },
    );
  }
}
