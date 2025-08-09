import 'dart:math';

import 'package:app/screens/recipe_details_screen.dart';
import 'package:app/utils/nav_helper.dart';
import 'package:app/widgets/general/skeletons/recipe_overview_card_skeleton.dart';
import 'package:flutter/material.dart';

import 'recipe_image.dart';

class RecipeOverviewCard extends StatelessWidget {
  final bool isLoading;
  final int? id;
  final String? title;
  final String? imgUrl;
  final int? readyInMinutes;

  final double? width;
  final double height;
  final double rightPadding;
  final EdgeInsets contentPadding;
  const RecipeOverviewCard({
    super.key,
    this.isLoading = false,
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.height,
    this.readyInMinutes,
    this.width,
    this.rightPadding = 16,
    this.contentPadding = const EdgeInsets.fromLTRB(14, 14, 14, 10),
  });

  void _navigateToRecipeScreen(BuildContext context) {
    NavHelper.push(context, RecipeDetailsScreen(recipeId: id!));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return isLoading
        ? RecipeOverviewCardSkeleton(
            contentPadding: contentPadding,
            rightPadding: rightPadding,
            width: width,
            height: height,
          )
        : GestureDetector(
            onTap: () => _navigateToRecipeScreen(context),
            // card container
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
                  RecipeImage(height: min(height * .635, 150), imgUrl: imgUrl!),
                  // content padding
                  Padding(
                    padding: contentPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // recipe title
                        Text(
                          title!,
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.titleSmall!.copyWith(height: 0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
