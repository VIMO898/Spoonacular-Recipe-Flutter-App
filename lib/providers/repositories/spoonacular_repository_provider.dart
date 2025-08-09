import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repositories/spoonacular_repository.dart';
import 'recipe_preference_repository_provider.dart';

final spoonacularRepositoryProvider = Provider<BaseSpoonacularRepository>((
  ref,
) {
  final repo = ref.watch(recipePreferenceRepositoryProvider);
  return SpoonacularRepository(repo);
  // return RecipesMockupRepository();
});
