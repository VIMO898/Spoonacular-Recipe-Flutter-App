import 'package:app/controllers/favorite_recipe_controller.dart';
import 'package:app/models/recipe_info_model.dart';
import 'package:app/providers/repositories/favorite_recipe_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteRecipeControllerProvider =
    StateNotifierProvider<FavoriteRecipeController, List<RecipeInfoModel>>((
      ref,
    ) {
      final repo = ref.watch(favoriteRecipeRepositoryProvider);
      return FavoriteRecipeController(repo);
    });
