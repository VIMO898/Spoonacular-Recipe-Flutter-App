import 'package:app/repositories/favorite_recipe_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/recipe_info_model.dart';

class FavoriteRecipeController extends StateNotifier<List<RecipeInfoModel>> {
  final BaseFavoriteRecipeRepository repo;
  FavoriteRecipeController(this.repo) : super([]) {
    _initializeState();
  }

  void _initializeState() {
    final savedRecipes = repo.getFavRecipes();
    state = savedRecipes;
  }

  Future<void> addRecipe(RecipeInfoModel recipe) async {
    state = [...state, recipe];
    return repo.addRecipe(recipe);
  }

  Future<bool> toggleFavRecipe(RecipeInfoModel recipe) async {
    final exists = recipeExists(recipe.id);
    if (exists) {
      await removeSingleRecipe(recipe.id);
      return false;
    }
    {
      await addRecipe(recipe);
      return true;
    }
  }

  Future<void> removeSingleRecipe(int recipeId) async {
    state = state.where((recipe) => recipe.id != recipeId).toList();
    return repo.removeRecipe(recipeId);
  }

  Future<void> removeMultipleRecipes(List<int> recipeIds) async {
    state = state.where((recipe) => !recipeIds.contains(recipe.id)).toList();
    return repo.removeMultipleRecipes(recipeIds);
  }

  bool recipeExists(int recipeId) {
    return repo.isRecipeFav(recipeId);
  }
}
