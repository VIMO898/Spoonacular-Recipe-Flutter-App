import 'package:app/models/recipe_preference_model.dart';
import 'package:app/models/basic_info_model.dart';
import 'package:app/repositories/recipe_preference_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final defaultRecipePreferences = RecipePreferenceModel(
  excludedCuisines: [],
  excludedIngredients: [],
  preferredDiets: [],
  intolerences: [],
);

class RecipePreferencesController extends StateNotifier<RecipePreferenceModel> {
  final Ref ref;
  final BaseRecipePreferenceRepository repo;
  RecipePreferencesController({required this.ref, required this.repo})
    : super(defaultRecipePreferences) {
    _initializeState();
  }

  void _initializeState() {
    final preferences = repo.getAllPreferences();
    state = preferences;
  }

  Future<void> _togglePreference({
    required BasicInfoModel item,
    required List<BasicInfoModel> currentList,
    required Function(List<BasicInfoModel>) updateState,
    bool? toggle,
    bool inverseToggle = false,
  }) async {
    final exists = currentList.any((e) => e == item);
    List<BasicInfoModel> updatedList = [];

    if ((toggle != null && toggle) || (inverseToggle ? !exists : exists)) {
      updatedList = currentList.where((e) => e != item).toList();
    } else {
      updatedList = [item, ...currentList];
    }

    updateState(updatedList);
    return repo.updatePreferences(state);
  }

  Future<void> toggleDiet(BasicInfoModel diet, [bool? toggle]) {
    return _togglePreference(
      item: diet,
      currentList: state.preferredDiets,
      updateState: (list) => state = state.copyWith(preferredDiets: list),
      toggle: toggle,
    );
  }

  Future<void> toggleIntolerence(BasicInfoModel intolerence, [bool? toggle]) {
    return _togglePreference(
      item: intolerence,
      currentList: state.intolerences,
      updateState: (list) => state = state.copyWith(intolerences: list),
      toggle: toggle,
      inverseToggle: true,
    );
  }

  Future<void> toggleCuisine(BasicInfoModel cuisine, [bool? toggle]) {
    return _togglePreference(
      item: cuisine,
      currentList: state.excludedCuisines,
      updateState: (list) => state = state.copyWith(excludedCuisines: list),
      toggle: toggle,
    );
  }

  Future<void> toggleIngredient(BasicInfoModel ingredient, [bool? toggle]) {
    return _togglePreference(
      item: ingredient,
      currentList: state.excludedIngredients,
      updateState: (list) => state = state.copyWith(excludedIngredients: list),
      toggle: toggle,
    );
  }

  Future<void> updateDiets(List<BasicInfoModel> diets) async {
    state = state.copyWith(preferredDiets: diets);
    return repo.updatePreferences(state);
  }

  Future<void> updateIntolerences(List<BasicInfoModel> intolerences) async {
    state = state.copyWith(intolerences: intolerences);
    return repo.updatePreferences(state);
  }

  Future<void> updateCuisines(List<BasicInfoModel> cuisines) async {
    state = state.copyWith(excludedCuisines: cuisines);
    return repo.updatePreferences(state);
  }

  Future<void> updateIngredients(List<BasicInfoModel> ingredients) async {
    state = state.copyWith(excludedIngredients: ingredients);
    return repo.updatePreferences(state);
  }
}
