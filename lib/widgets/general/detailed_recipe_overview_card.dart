import 'dart:math';

import 'package:app/constants/enums.dart';
import 'package:app/extensions/string_extension.dart';
import 'package:app/models/recipe_info_model.dart';
import 'package:app/providers/controllers/theme_state_controller_provider.dart';
import 'package:app/screens/recipe_details_screen.dart';
import 'package:app/utils/nav_helper.dart';
import 'package:app/widgets/general/skeletons/detailed_recipe_overview_card_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'recipe_image.dart';
import 'recipe_meta_info_list.dart';

class DetailedRecipeOverviewCard extends StatelessWidget {
  final bool isLoading;
  final RecipeInfoModel? recipeInfo;
  final double width;
  final double height;
  final double rightPadding;
  final EdgeInsets contentPadding;
  // final cardWidth = 260.0;
  //   final cardHeight = 345.0;
  const DetailedRecipeOverviewCard({
    super.key,
    this.isLoading = false,
    required this.recipeInfo,
    this.width = 260.0,
    this.height = 345.0,
    this.rightPadding = 16,
    this.contentPadding = const EdgeInsets.fromLTRB(14, 14, 14, 10),
  });

  void _navigateToRecipeScreen(BuildContext context) {
    NavHelper.push(context, RecipeDetailsScreen(recipeId: recipeInfo!.id));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return isLoading
        ? _buildSkeletonLoading()
        : GestureDetector(
            onTap: () => _navigateToRecipeScreen(context),
            child: Container(
              width: width,
              height: height,
              margin: EdgeInsets.only(right: rightPadding, bottom: 4),
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: theme.shadowColor,
                    offset: const Offset(2, 1),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // recipe image size
                  SizedBox(
                    width: double.infinity,
                    height: min(height * .635, 160),
                    // stack for small info
                    child: Stack(
                      children: [
                        // recipe image
                        RecipeImage(imgUrl: recipeInfo!.image),
                        // cooking time
                        Positioned(
                          top: 10,
                          right: 6,
                          child: _buildImageInfoTag(
                            context,
                            Icons.schedule,
                            '${recipeInfo!.readyInMinutes} Min',
                          ),
                        ),
                        // recipe score
                        Positioned(
                          bottom: 10,
                          left: 6,
                          child: _buildImageInfoTag(
                            context,
                            Icons.star,
                            recipeInfo!.spoonacularScore.toStringAsFixed(1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // content padding
                  Padding(
                    padding: contentPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // recipe title
                        Text(
                          recipeInfo!.title,
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        RecipeMetaInfoList(
                          recipeMetaInfo: [
                            RecipeMetaInfo(
                              label: 'Likes',
                              icon: Icons.favorite,
                              value: recipeInfo!.aggregateLikes.toString(),
                            ),
                            RecipeMetaInfo(
                              label: 'Servings',
                              icon: Icons.groups,
                              value: recipeInfo!.servings.toString(),
                            ),
                            RecipeMetaInfo(
                              label: 'Per Serving',
                              icon: Icons.paid,
                              value: recipeInfo!.pricePerServing
                                  .toStringAsFixed(0),
                            ),
                          ],
                        ),
                        // Recipe Highlight
                        // RecipeQualities(itemCount: 4, recipeInfo: recipeInfo!),
                        Consumer(
                          builder: (context, ref, child) {
                            final themeState = ref.watch(
                              themeStateControllerProvider,
                            );
                            final textScaleLevel = themeState.textScaleLevel;
                            final maxLines = switch (textScaleLevel) {
                              TextScaleLevel.small => 4,
                              TextScaleLevel.medium => 3,
                              TextScaleLevel.large => 2,
                            };
                            return Padding(
                              padding: const EdgeInsets.only(top: 4, bottom: 4),
                              child: Text(
                                recipeInfo!.summary.removeHtmlTags(),
                                // maxLines: isTextScaleLarge ? 2 : 3,
                                maxLines: maxLines,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.bodyMedium!.copyWith(
                                  height: 0,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  DetailedRecipeOverviewCardSkeleton _buildSkeletonLoading() {
    return DetailedRecipeOverviewCardSkeleton(
      contentPadding: contentPadding,
      width: width,
      height: height,
      rightPadding: rightPadding,
    );
  }

  Container _buildImageInfoTag(
    BuildContext context,
    IconData icon,
    String label,
  ) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 3),
          Text(
            label,
            style: textTheme.labelLarge!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
