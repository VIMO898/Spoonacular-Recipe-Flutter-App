import 'package:flutter/material.dart';

import '../../animations/delayed_display_animation.dart';
import '../../models/recipe_info_model.dart';
import 'recipe_info_heading.dart';
import 'cover_image_with_buttons.dart';
import 'recipe_info_card.dart';

class RecipeHeadingProfile extends StatelessWidget {
  const RecipeHeadingProfile({
    super.key,
    required this.animationDuration,
    required this.recipe,
  });

  final Duration animationDuration;
  final RecipeInfoModel recipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CoverImageWithButtons(recipe),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DelayedDisplayAnimation(
                delay: const Duration(milliseconds: 200),
                duration: animationDuration,
                child: RecipeInfoHeading(text: recipe.title, fontSize: 30),
              ),
              DelayedDisplayAnimation(
                delay: const Duration(milliseconds: 400),
                duration: animationDuration,
                child: RecipeInfoCard(
                  readyInMinutes: recipe.readyInMinutes,
                  servings: recipe.servings,
                  pricePerServing: recipe.pricePerServing,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
