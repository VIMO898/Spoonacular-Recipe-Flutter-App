import 'package:app/models/complete_recipe_info_model.dart';
import 'package:app/models/recipe_info_model.dart';
import 'package:app/repositories/downloaded_recipe_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DownloadedRecipeController extends StateNotifier<List<RecipeInfoModel>> {
  final BaseDownloadedRecipeRepository repo;
  DownloadedRecipeController(this.repo) : super([]) {
    _initializeState();
  }
  void _initializeState() {
    state = repo.getDownloadedRecipeInfo();
  }

  CompleteRecipeInfoModel getCompleteRecipeInfo(int recipeId) {
    return repo.getCompleteRecipeInfo(recipeId);
  }

  Future<void> downloadCompleteRecipeInfo(
      CompleteRecipeInfoModel completeRecipeInfo) {
    return repo.downloadCompleteRecipeInfo(completeRecipeInfo);
  }

  Future<void> deleteDownloadedRecipe(int recipeId) {
    return repo.deleteDownloadedRecipe(recipeId);
  }
}
