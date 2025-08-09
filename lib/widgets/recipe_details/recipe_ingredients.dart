import 'package:flutter/material.dart';

import '../../animations/delayed_display_animation.dart';
import '../../models/basic_info_model.dart';
import 'circular_avatar_list_view.dart';

class RecipeIngredients extends StatelessWidget {
  const RecipeIngredients({
    super.key,
    required this.ingredients,
    required this.networkedImages,
  });

  final bool networkedImages;
  final List<BasicInfoModel> ingredients;

  @override
  Widget build(BuildContext context) {
    return DelayedDisplayAnimation(
      initialSlidingOffset: const Offset(-0.6, 0),
      delay: const Duration(milliseconds: 600),
      duration: const Duration(milliseconds: 1400),
      child: CircularAvatarListView(
        padding: const EdgeInsets.only(left: 12),
        title: 'Ingredients',
        items: ingredients.map((ingredient) {
          return TitledCircularAvatar(
            type: RecipeAvatarType.ingredients,
            isNetworkedImg: networkedImages,
            title: ingredient.name,
            imgSrc: ingredient.image!,
          );
        }).toList(),
      ),
    );
  }
}
