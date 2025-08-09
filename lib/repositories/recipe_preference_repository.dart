import 'package:app/models/recipe_preference_model.dart';
import 'package:app/providers/general/all_diet_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class BaseRecipePreferenceRepository {
  RecipePreferenceModel getAllPreferences();
  Future<void> updatePreferences(RecipePreferenceModel updatedPreferences);
}

class RecipePreferenceRepository implements BaseRecipePreferenceRepository {
  final Box box;
  final Ref ref;
  const RecipePreferenceRepository({required this.box, required this.ref});
  static const String boxKey = 'recipePreferences';
  @override
  RecipePreferenceModel getAllPreferences() {
    final recipePreferencesAsJson = box.get(boxKey);
    if (recipePreferencesAsJson == null) {
      final diets = ref.read(allDietProvider);
      final defaultPreferences = RecipePreferenceModel(
        excludedCuisines: [],
        excludedIngredients: [],
        preferredDiets: diets,
        intolerences: [],
      );
      updatePreferences(defaultPreferences);
      return defaultPreferences;
    }
    return RecipePreferenceModel.fromJson(recipePreferencesAsJson);
  }

  @override
  Future<void> updatePreferences(RecipePreferenceModel updatedPreferences) {
    return box.put(boxKey, updatedPreferences.toJson());
  }
}
