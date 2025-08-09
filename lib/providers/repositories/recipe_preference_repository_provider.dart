import 'package:app/providers/hive_boxes/recipe_preference_box_provider.dart';
import 'package:app/repositories/recipe_preference_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recipePreferenceRepositoryProvider = Provider((ref) {
  final box = ref.watch(recipePreferenceBoxProvider);
  return RecipePreferenceRepository(box: box, ref: ref);
});
