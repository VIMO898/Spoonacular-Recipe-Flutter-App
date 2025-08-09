import 'package:app/models/recipe_info_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class BaseFavoriteRecipeRepository {
  List<RecipeInfoModel> getFavRecipes();
  Future<void> addRecipe(RecipeInfoModel recipeInfo);
  Future<void> removeRecipe(int recipeId);
  Future<void> removeMultipleRecipes(List<int> recipeIds);
  bool isRecipeFav(int recipeId);
}

class FavoriteRecipeRepository implements BaseFavoriteRecipeRepository {
  final Box box;
  const FavoriteRecipeRepository(this.box);
  @override
  List<RecipeInfoModel> getFavRecipes() {
    final recipeMap = box.values.toList();
    if (recipeMap.isEmpty) return [];
    final recipes = recipeMap.map((recipeAsJson) {
      return RecipeInfoModel.fromJson(recipeAsJson);
    }).toList();
    return recipes;
  }

  @override
  Future<void> addRecipe(RecipeInfoModel recipeInfo) async {
    final encodedRecipe = recipeInfo.toJson();
    return box.put(recipeInfo.id, encodedRecipe);
  }

  @override
  bool isRecipeFav(int recipeId) {
    return box.containsKey(recipeId);
  }

  @override
  Future<void> removeRecipe(int recipeId) async {
    return box.delete(recipeId);
  }

  @override
  Future<void> removeMultipleRecipes(List<int> recipeIds) async {
    return box.deleteAll(recipeIds);
  }
}
