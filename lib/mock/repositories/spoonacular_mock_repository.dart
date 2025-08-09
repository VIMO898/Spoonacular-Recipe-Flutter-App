import 'dart:developer';

import 'package:app/mock/data/spoonacular_mockup_repository/nutritional_facts.dart';
import 'package:app/mock/data/spoonacular_mockup_repository/recipe_equipment.dart';
import 'package:app/mock/data/spoonacular_mockup_repository/recipe_info.dart';
import 'package:app/mock/data/spoonacular_mockup_repository/search_auto_completes.dart';
import 'package:app/mock/data/spoonacular_mockup_repository/search_recipes_with_basic_filters.dart';
import 'package:app/mock/data/spoonacular_mockup_repository/search_recipes_with_complex_filters.dart';
import 'package:app/mock/data/spoonacular_mockup_repository/similar_recipes.dart';
import 'package:app/models/analyzed_instruction_model.dart';
import 'package:app/models/basic_search_filters_model.dart';
import 'package:app/models/complete_recipe_info_model.dart';
import 'package:app/models/complex_search_filter_model.dart';
import 'package:app/models/equipment_model.dart';
import 'package:app/models/nutrition_model.dart';
import 'package:app/models/recipe_info_model.dart';
import 'package:app/models/recipe_search_result_model.dart';
import 'package:app/models/search_autocomplete_model.dart';
import 'package:app/models/similar_recipe_model.dart';
import 'package:app/models/spoonacular_result_model.dart';

import '../../repositories/spoonacular_repository.dart';

class RecipesMockRepository implements BaseSpoonacularRepository {
  @override
  Future<CompleteRecipeInfoModel> getCompleteRecipeInfo({
    required int recipeId,
    RecipeInfoModel? recipeDetails,
  }) async {
    log('getCompleteRecipeInfo');
    await Future.delayed(const Duration(seconds: 1));
    return CompleteRecipeInfoModel(
      recipeInfo: recipeInfo,
      similarRecipes: similarRecipes,
      recipeEquipment: recipeEquipment,
      nutrient: nutritionalFacts,
    );
  }

  @override
  Future<NutritionModel> getNutritionalFacts({required int recipeId}) async {
    log('getNutritionalFacts');
    await Future.delayed(const Duration(seconds: 1));
    return nutritionalFacts;
  }

  @override
  Future<List<EquipmentModel>> getRecipeEquipments({
    required int recipeId,
  }) async {
    log('getRecipeEquipments');
    await Future.delayed(const Duration(seconds: 1));
    return recipeEquipment;
  }

  @override
  Future<RecipeInfoModel> getRecipeInfo({required int recipeId}) async {
    log('getRecipeInfo');
    await Future.delayed(const Duration(seconds: 1));
    return recipeInfo;
  }

  @override
  Future<List<SearchAutocompleteModel>> getSearchAutoCompletes(
    String query,
  ) async {
    log('getSearchAutoCompletes');
    await Future.delayed(const Duration(seconds: 1));
    return searchAutoCompletes;
  }

  @override
  Future<List<SimilarRecipeModel>> getSimilarRecipes({
    required int recipeId,
    int number = 10,
  }) async {
    log('getSimilarRecipes');
    await Future.delayed(const Duration(seconds: 1));
    return similarRecipes;
  }

  @override
  Future<SpoonacularResultModel<RecipeInfoModel>>
  searchRecipesWithBasicFilters({
    required BasicSearchFiltersModel filters,
    String? query,
    int number = 10,
    int offset = 0,
  }) async {
    log('searchRecipesWithBasicFilters');
    await Future.delayed(const Duration(seconds: 1));
    return searchedRecipesWithBasicFilters;
  }

  @override
  Future<SpoonacularResultModel<RecipeSearchResultModel>>
  searchRecipesWithComplexFilters({
    String? query,
    required ComplexSearchFilterModel filters,
    int number = 20,
    int offset = 0,
  }) async {
    log('searchRecipesWithComplexFilters');
    await Future.delayed(const Duration(seconds: 1));
    return searchedRecipesWithComplexFilters;
  }

  @override
  Future<List<AnalyzedInstructionModel>> getAnalyzedInstructions({
    required int recipeId,
  }) {
    // TODO: implement getAnalyzedInstructions
    throw UnimplementedError();
  }
}
