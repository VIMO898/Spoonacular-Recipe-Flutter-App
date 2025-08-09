import 'package:app/animations/delayed_display_animation.dart';
import 'package:app/providers/controllers/favorite_recipe_controller_provider.dart';
import 'package:app/widgets/general/large_recipe_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteRecipeScreen extends ConsumerWidget {
  const FavoriteRecipeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final favRecipes = ref.watch(favoriteRecipeControllerProvider);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return favRecipes.isEmpty
        ? _buildEmptyListMessage(textTheme)
        : DelayedDisplayAnimation(
            duration: const Duration(milliseconds: 1200),
            initialSlidingOffset: const Offset(0, -0.05),
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 16),
              itemCount: favRecipes.length,
              itemBuilder: (context, index) {
                final recipe = favRecipes[index];
                return LargeRecipeTile(
                  margin: const EdgeInsets.fromLTRB(12, 0, 12, 18),
                  imgPaddingRight: 15,
                  height: 136,
                  cardRadius: 12,
                  imgRadius: 9,
                  imgWidth: 115,
                  titleMaxLines: 2,
                  maxMetaInfoItems: 3,
                  recipeInfo: recipe,
                );
              },
            ),
          );
  }

  Padding _buildEmptyListMessage(TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.flatware_outlined, size: 160),
          const SizedBox(height: 12),
          Text('Empty', style: textTheme.headlineSmall),
          const SizedBox(height: 6),
          Text(
            'Tap the heart icon to save the recipes as favorites to see them right here',
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
