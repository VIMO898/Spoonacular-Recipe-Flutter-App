import 'package:app/models/recipe_info_model.dart';
import 'package:app/widgets/general/large_recipe_tile.dart';
import 'package:flutter/material.dart';

class SliverLargeRecipeTileListView extends StatelessWidget {
  final List<RecipeInfoModel>? recipesInfo;
  final bool isLoading;
  const SliverLargeRecipeTileListView({
    super.key,
    this.isLoading = false,
    required this.recipesInfo,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 16),
      sliver: SliverList.builder(
        itemCount: isLoading ? 10 : recipesInfo!.length,
        itemBuilder: (context, index) {
          final recipeInfo = !isLoading ? recipesInfo![index] : null;
          return LargeRecipeTile(
            isLoading: isLoading,
            recipeInfo: recipeInfo,
            imgPaddingRight: 15,
            height: 136,
            cardRadius: 12,
            imgRadius: 9,
            imgWidth: 115,
            titleMaxLines: 2,
            maxMetaInfoItems: 3,
          );
        },
      ),
    );
  }
}
