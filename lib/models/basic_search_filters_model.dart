import 'package:app/constants/enums.dart';
import '../constants/common_ingredient_enum.dart';
import '../constants/recipe_sort_enum.dart';

class BasicSearchFiltersModel {
  final RecipeType? type;
  final List<RecipeTag>? tags;
  final List<Cuisine>? cuisine;
  final List<Cuisine>? excludeCuisine;
  final List<Diet>? diet;
  final List<Intolerence>? intolerances;
  final List<Ingredient>? includeIngredients;
  final List<Ingredient>? excludeIngredients;
  final int? maxReadyTime;
  final RecipeSort sort;
  final SortDirection sortDirection;
  const BasicSearchFiltersModel({
    this.type,
    this.tags,
    this.cuisine,
    this.excludeCuisine,
    this.diet,
    this.intolerances,
    this.includeIngredients,
    this.excludeIngredients,
    this.maxReadyTime,
    this.sort = RecipeSort.random,
    this.sortDirection = SortDirection.desc,
  });

  BasicSearchFiltersModel copyWith({
    RecipeType? type,
    List<RecipeTag>? tags,
    List<Cuisine>? cuisine,
    List<Cuisine>? excludeCuisine,
    List<Diet>? diet,
    List<Intolerence>? intolerances,
    List<Ingredient>? includeIngredients,
    List<Ingredient>? excludeIngredients,
    RecipeSort? sort,
    int? maxReadyTime,
    SortDirection? sortDirection,
  }) {
    return BasicSearchFiltersModel(
      type: type ?? this.type,
      tags: tags ?? this.tags,
      cuisine: cuisine ?? this.cuisine,
      excludeCuisine: excludeCuisine ?? this.excludeCuisine,
      diet: diet ?? this.diet,
      intolerances: intolerances ?? this.intolerances,
      includeIngredients: includeIngredients ?? this.includeIngredients,
      excludeIngredients: excludeIngredients ?? this.excludeIngredients,
      maxReadyTime: maxReadyTime ?? this.maxReadyTime,
      sort: sort ?? this.sort,
      sortDirection: sortDirection ?? this.sortDirection,
    );
  }

  @override
  String toString() {
    return 'BasicSearchFiltersModel(type: $type, tags: $tags, cuisine: $cuisine, excludeCuisine: $excludeCuisine, diet: $diet, intolerances: $intolerances, includeIngredients: $includeIngredients, excludeIngredients: $excludeIngredients, maxReadyTime: $maxReadyTime, sort: $sort, sortDirection: $sortDirection)';
  }
}
