import 'package:app/controllers/recipe_preferences_controller.dart';
import 'package:app/models/recipe_preference_model.dart';
import 'package:app/providers/repositories/recipe_preference_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recipePreferenceControllerProvider =
    StateNotifierProvider<RecipePreferencesController, RecipePreferenceModel>(
        (ref) {
  final repo = ref.watch(recipePreferenceRepositoryProvider);
  return RecipePreferencesController(ref: ref, repo: repo);
});
