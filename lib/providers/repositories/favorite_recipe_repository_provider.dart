import 'package:app/providers/hive_boxes/wish_list_box_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repositories/favorite_recipe_repository.dart';

final favoriteRecipeRepositoryProvider = Provider((ref) {
  final box = ref.watch(wishListBoxProvider);
  return FavoriteRecipeRepository(box);
});
