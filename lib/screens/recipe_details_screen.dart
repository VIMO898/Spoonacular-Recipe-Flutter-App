import 'dart:developer';

import 'package:app/models/complete_recipe_info_model.dart';
import 'package:app/models/recipe_info_model.dart';
import 'package:app/providers/repositories/spoonacular_repository_provider.dart';
import 'package:app/widgets/home/recipe_qualities.dart';
import 'package:app/widgets/recipe_details/heading_with_article.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../exceptions/spoonacular_exception.dart';
import '../widgets/general/status_message.dart';
import '../widgets/general/centered_loading_beat.dart';
import '../widgets/recipe_details/horizontal_similar_recipe_list_view.dart';
import '../widgets/recipe_details/nutrition_dropdowns.dart';
import '../widgets/recipe_details/recipe_equipment.dart';
import '../widgets/recipe_details/recipe_heading_profile.dart';
import '../widgets/recipe_details/recipe_ingredients.dart';

class RecipeDetailsScreen extends ConsumerStatefulWidget {
  final bool networkedImages;
  final int recipeId;
  final CompleteRecipeInfoModel? completeRecipeInfo;
  final RecipeInfoModel? recipeInfo;
  const RecipeDetailsScreen({
    super.key,
    required this.recipeId,
    this.networkedImages = true,
    this.completeRecipeInfo,
    this.recipeInfo,
  });

  @override
  ConsumerState<RecipeDetailsScreen> createState() =>
      _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends ConsumerState<RecipeDetailsScreen> {
  late Future<CompleteRecipeInfoModel> _future;
  @override
  void initState() {
    super.initState();
    _handleTriggerFuture(false);
  }

  void _handleTriggerFuture(bool updateWidget) {
    final repo = ref.read(spoonacularRepositoryProvider);
    _future = repo.getCompleteRecipeInfo(
      recipeId: widget.recipeId,
      recipeDetails: widget.recipeInfo,
    );
    if (updateWidget) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const animationDuration = Duration(milliseconds: 1400);
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
          statusBarBrightness: Brightness.dark,
        ),
        child: SafeArea(
          child: FutureBuilder(
            future: _future,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CenteredLoadingBeat();
              }
              if (snapshot.hasError) {
                if (snapshot.error is SpoonacularException) {
                  final error = snapshot.error as SpoonacularException;
                  return StatusMessage(
                    title: error.code.toString(),
                    message: error.message,
                    onRefresh: () => _handleTriggerFuture(true),
                  );
                }
                log(snapshot.error.toString());
                return StatusMessage(
                  title: '404',
                  message: 'Oops! Something went wrong :(',
                  onRefresh: () => _handleTriggerFuture(true),
                );
              }
              final data = snapshot.data!;
              final recipe = data.recipeInfo;
              final equipment = data.recipeEquipment;
              final similarRecipes = data.similarRecipes;
              final recipeNutrient = data.nutrient;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecipeHeadingProfile(
                      animationDuration: animationDuration,
                      recipe: recipe,
                    ),
                    RecipeHighlights(recipeInfo: recipe),
                    if (recipe.extendedIngredients != null)
                      RecipeIngredients(
                        networkedImages: widget.networkedImages,
                        ingredients: recipe.extendedIngredients!,
                      ),
                    if (recipe.instructions != null &&
                        recipe.instructions!.isNotEmpty)
                      HeadingWithArticle(
                        duration: animationDuration,
                        delay: const Duration(milliseconds: 800),
                        heading: 'Instructions',
                        article: recipe.instructions!,
                      ),
                    if (equipment.isNotEmpty)
                      RecipeEquipment(
                        networkedImages: widget.networkedImages,
                        equipment: equipment,
                      ),
                    if (recipe.summary.isNotEmpty)
                      HeadingWithArticle(
                        heading: 'Quick Summary',
                        article: recipe.summary,
                      ),
                    NutritionDropDowns(nutrient: recipeNutrient),
                    if (similarRecipes != null)
                      HorizontalSimilarRecipeListView(similarRecipes),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
