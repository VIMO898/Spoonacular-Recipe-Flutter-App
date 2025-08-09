import 'dart:developer';

import 'package:app/exceptions/spoonacular_exception.dart';
import 'package:app/extensions/string_extension.dart';
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
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/recipe_preference_model.dart';
import '../utils/general_reusable_functions.dart';
import 'recipe_preference_repository.dart';

abstract class BaseSpoonacularRepository {
  Future<SpoonacularResultModel<RecipeInfoModel>>
  searchRecipesWithBasicFilters({
    required BasicSearchFiltersModel filters,
    String? query,
    int number = 10,
    int offset = 0,
  });
  Future<RecipeInfoModel> getRecipeInfo({required int recipeId});
  Future<CompleteRecipeInfoModel> getCompleteRecipeInfo({
    required int recipeId,
    RecipeInfoModel? recipeDetails,
  });
  Future<List<SimilarRecipeModel>> getSimilarRecipes({
    required int recipeId,
    int number = 10,
  });
  Future<List<EquipmentModel>> getRecipeEquipments({required int recipeId});
  Future<NutritionModel> getNutritionalFacts({required int recipeId});
  Future<SpoonacularResultModel<RecipeSearchResultModel>>
  searchRecipesWithComplexFilters({
    String? query,
    required ComplexSearchFilterModel filters,
    int number = 20,
    int offset = 0,
  });
  Future<List<SearchAutocompleteModel>> getSearchAutoCompletes(String query);
  Future<List<AnalyzedInstructionModel>> getAnalyzedInstructions({
    required int recipeId,
  });
}

final rp = RecipePreferenceModel(
  excludedCuisines: [],
  excludedIngredients: [],
  preferredDiets: [],
  intolerences: [],
);

class SpoonacularRepository implements BaseSpoonacularRepository {
  final BaseRecipePreferenceRepository? repo;
  SpoonacularRepository([this.repo]);

  final _dio = Dio();
  final _baseUrl = 'https://api.spoonacular.com/recipes';
  final _key = dotenv.env['spoonacularApiKey'];

  Options get _defaultOptions => Options(headers: {'x-api-key': _key});

  SpoonacularException _spoonacularException(
    Response? response,
    String? customMessage,
  ) => SpoonacularException(
    code: response?.statusCode ?? 503,
    status: response?.statusMessage ?? 'Failed',
    message:
        response?.statusMessage ??
        customMessage ??
        'Something went wrong! Please check your internet connection.',
  );

  Future<T> _request<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    required T Function(dynamic data) parser,
    String? defaultErrorMessage,
  }) async {
    log(
      {'path': path, 'queryParameters': queryParameters.toString()}.toString(),
    );
    try {
      final response = await _dio.get(
        '$_baseUrl$path',
        options: _defaultOptions,
        queryParameters: queryParameters,
      );
      return parser(response.data);
    } on DioException catch (e) {
      final data = e.response;
      throw _spoonacularException(data, defaultErrorMessage);
    }
  }

  @override
  Future<List<SearchAutocompleteModel>> getSearchAutoCompletes(String query) {
    return _request(
      '/autocomplete',
      queryParameters: {'query': query, 'number': 25},
      parser: (data) {
        return (data as List)
            .map(
              (autoCompleteAsJson) =>
                  SearchAutocompleteModel.fromMap(autoCompleteAsJson),
            )
            .toList();
      },
      defaultErrorMessage:
          'Could not fetch results from our database. Please check your internet or try again later.',
    );
  }

  @override
  Future<SpoonacularResultModel<RecipeSearchResultModel>>
  searchRecipesWithComplexFilters({
    String? query,
    required ComplexSearchFilterModel filters,
    int offset = 0,
    int number = 10,
  }) async {
    final mappedFilters = filters.toMap();
    final nonNullableFilters = {};
    mappedFilters.forEach((key, value) {
      if (value == null || (value is String && value.isEmpty)) return;
      nonNullableFilters.putIfAbsent(key, () => value);
    });
    return _request(
      '/complexSearch',
      queryParameters: {
        if (query != null && query.isNotEmpty) 'query': query,
        'addRecipeInformation': false,
        ...nonNullableFilters,
        'number': number,
        'offset': offset,
      },
      parser: (data) {
        return SpoonacularResultModel.fromMap(data, (recipeJson) {
          return RecipeSearchResultModel.fromMap(recipeJson);
        });
      },
      defaultErrorMessage:
          "Recipe search failed for query: '$query'. Please refine your search and try again.",
    );
  }

  @override
  Future<SpoonacularResultModel<RecipeInfoModel>>
  searchRecipesWithBasicFilters({
    required BasicSearchFiltersModel filters,
    String? query,
    int number = 10,
    int offset = 0,
  }) async {
    // final rp = repo.getAllPreferences();
    final f = filters;
    final queryParams = {
      if (query != null) 'query': query,
      'addRecipeInformation': true,
      if (f.type != null) 'type': f.type!.name,
      if (f.cuisine != null)
        'cuisine': enumValuesToKebabCaseJoinedStr(f.cuisine!),
      if (f.excludeCuisine != null || rp.excludedCuisines.isNotEmpty)
        'excludeCuisine': f.excludeCuisine != null
            ? enumValuesToKebabCaseJoinedStr(f.excludeCuisine!)
            : basicInfoToNameJoinedKebabCaseList(rp.excludedCuisines),
      if (f.diet != null || rp.preferredDiets.isNotEmpty)
        'diet': f.diet != null
            ? enumValuesToKebabCaseJoinedStr(f.diet!, '|')
            : basicInfoToNameJoinedKebabCaseList(rp.preferredDiets, '|'),
      if (f.intolerances != null || rp.intolerences.isNotEmpty)
        'intolerances': f.intolerances != null
            ? enumValuesToKebabCaseJoinedStr(f.intolerances!)
            : basicInfoToNameJoinedKebabCaseList(rp.intolerences),
      if (f.includeIngredients != null)
        'includeIngredients': enumValuesToKebabCaseJoinedStr(
          f.includeIngredients!,
        ),
      if (f.excludeIngredients != null || rp.excludedIngredients.isNotEmpty)
        'excludeIngredients': f.excludeIngredients != null
            ? enumValuesToKebabCaseJoinedStr(f.excludeIngredients!)
            : basicInfoToNameJoinedKebabCaseList(rp.excludedIngredients),
      if (f.maxReadyTime != null) 'maxReadyTime': f.maxReadyTime,
      'sort': f.sort.name.camelToKebabCase(),
      'sortDirection': f.sortDirection.name.camelToKebabCase(),
      'number': number,
      'offset': offset,
    };
    return _request(
      '/complexSearch',
      queryParameters: queryParams,
      parser: (data) => SpoonacularResultModel.fromMap(
        data,
        (recipeInfoJson) => RecipeInfoModel.fromMap(recipeInfoJson),
      ),
      defaultErrorMessage:
          'Failed to fetch random recipes. Please check your internet connection or try again later.',
    );
  }

  @override
  Future<CompleteRecipeInfoModel> getCompleteRecipeInfo({
    required int recipeId,
    RecipeInfoModel? recipeDetails,
  }) async {
    try {
      final futures = await Future.wait([
        if (recipeDetails == null)
          getRecipeInfo(recipeId: recipeId)
        else
          Future.value(recipeDetails),
        getRecipeEquipments(recipeId: recipeId),
        getSimilarRecipes(recipeId: recipeId),
        getNutritionalFacts(recipeId: recipeId),
      ]);

      final recipeInfo = futures[0] as RecipeInfoModel;
      final equipment = futures[1] as List<EquipmentModel>;
      final similarRecipes = futures[2] as List<SimilarRecipeModel>;
      final nutritionalFacts = futures[3] as NutritionModel;

      // final recipeInfo = await getRecipeInfo(recipeId: recipeId);
      // final equipment = await getRecipeEquipments(recipeId: recipeId);
      // final similarRecipes = await getSimilarRecipes(recipeId: recipeId);
      // final nutritionalFacts = await getNutritionalFacts(recipeId: recipeId);

      final completeRecipeInfo = CompleteRecipeInfoModel(
        recipeInfo: recipeInfo,
        similarRecipes: similarRecipes,
        recipeEquipment: equipment,
        nutrient: nutritionalFacts,
      );
      return completeRecipeInfo;
    } on SpoonacularException catch (_) {
      rethrow;
    } catch (_) {
      throw _spoonacularException(
        null,
        'Failed to fetch complete recipe information for ID: $recipeId. Please try again later.',
      );
    }
  }

  @override
  Future<NutritionModel> getNutritionalFacts({required int recipeId}) async {
    return _request(
      '/$recipeId/nutritionWidget.json',
      parser: (data) => NutritionModel.fromMap(data),
      defaultErrorMessage:
          'Failed to retrieve nutritional facts for recipe ID: $recipeId. The data might be unavailable.',
    );
  }

  @override
  Future<List<EquipmentModel>> getRecipeEquipments({
    required int recipeId,
  }) async {
    return _request(
      '/$recipeId/equipmentWidget.json',
      parser: (data) {
        final equipmentsAsMap = data['equipment'] as List;
        return equipmentsAsMap
            .map((json) => EquipmentModel.fromMap(json))
            .toList();
      },
      defaultErrorMessage:
          'Failed to fetch equipment details for recipe ID: $recipeId. Please verify the recipe ID and try again.',
    );
  }

  @override
  Future<RecipeInfoModel> getRecipeInfo({required int recipeId}) async {
    return _request(
      '/$recipeId/information',
      queryParameters: {
        'includeNutrition': false,
        'addWinePairing': false,
        'addTasteData': false,
      },
      parser: (data) => RecipeInfoModel.fromMap(data),
      defaultErrorMessage:
          'Failed to fetch recipe details for ID: $recipeId. The recipe may not exist or there was a network issue.',
    );
  }

  @override
  Future<List<SimilarRecipeModel>> getSimilarRecipes({
    required int recipeId,
    int number = 10,
  }) async {
    return _request(
      '/$recipeId/similar',
      parser: (data) {
        return (data as List)
            .map((json) => SimilarRecipeModel.fromMap(json))
            .toList();
      },
      defaultErrorMessage:
          'Failed to fetch similar recipes for ID: $recipeId. There may be no similar recipes available.',
    );
  }

  @override
  Future<List<AnalyzedInstructionModel>> getAnalyzedInstructions({
    required int recipeId,
  }) async {
    return _request(
      '/$recipeId/analyzedInstructions',
      parser: (data) => (data as List)
          .map((json) => AnalyzedInstructionModel.fromJson(json))
          .toList(),
      defaultErrorMessage:
          'Failed to fetch step-by-step instructions for recipe ID: $recipeId. Please try again later.',
    );
  }
}
