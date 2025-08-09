import 'package:app/animations/delayed_display_animation.dart';
import 'package:app/models/recipe_info_model.dart';
import 'package:app/providers/controllers/favorite_recipe_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoverImageWithButtons extends ConsumerStatefulWidget {
  final RecipeInfoModel recipeInfo;
  const CoverImageWithButtons(this.recipeInfo, {super.key});

  @override
  ConsumerState<CoverImageWithButtons> createState() =>
      _CoverImageWithButtonsState();
}

class _CoverImageWithButtonsState extends ConsumerState<CoverImageWithButtons> {
  bool _isRecipeFav = false;
  @override
  void initState() {
    super.initState();
    _isRecipeFav = ref
        .read(favoriteRecipeControllerProvider.notifier)
        .recipeExists(widget.recipeInfo.id);
  }

  void _handleToggleFavoriteRecipe(WidgetRef ref) async {
    final added = await ref
        .read(favoriteRecipeControllerProvider.notifier)
        .toggleFavRecipe(widget.recipeInfo);
    _isRecipeFav = added;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const animationDuration = Duration(milliseconds: 1400);
    final theme = Theme.of(context);
    return SizedBox(
      height: 320,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Image.network(widget.recipeInfo.image, fit: BoxFit.cover),
          Positioned(
            top: 16,
            left: 16,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.black,
                  size: 22,
                ),
              ),
            ),
          ),
          Positioned(
            top: 22,
            right: 16,
            child: Icon(Icons.ios_share, color: Colors.white, size: 32),
          ),
          Positioned(
            bottom: -18,
            left: 22,
            child: DelayedDisplayAnimation(
              duration: animationDuration,
              child: Container(
                height: 50,
                width: 110,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 2),
                      blurRadius: 6,
                      spreadRadius: 2,
                      color: theme.shadowColor,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(24),
                  // color: Colors.white,
                  color: theme.cardColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.recipeInfo.aggregateLikes.toString(),
                      style: const TextStyle(fontSize: 17),
                    ),
                    const SizedBox(width: 12),
                    Icon(Icons.star, color: theme.primaryColor, size: 26),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 22,
            bottom: -18,
            child: DelayedDisplayAnimation(
              duration: animationDuration,
              child: GestureDetector(
                onTap: () => _handleToggleFavoriteRecipe(ref),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1, 1),
                        blurRadius: 6,
                        spreadRadius: 1,
                        color: Colors.grey.shade700,
                      ),
                    ],
                    color: Colors.grey.shade600,
                  ),
                  child: Icon(
                    _isRecipeFav ? Icons.favorite : Icons.favorite_outline,
                    color: _isRecipeFav ? Colors.red : Colors.white,
                    size: 34,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
