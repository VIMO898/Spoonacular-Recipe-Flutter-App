import 'package:app/models/recipe_info_model.dart';
import 'package:app/screens/recipe_details_screen.dart';
import 'package:app/utils/nav_helper.dart';
import 'package:app/widgets/general/recipe_image.dart';
import 'package:app/widgets/general/skeletons/large_recipe_tile_skeleton.dart';
import 'package:flutter/material.dart';

import 'recipe_meta_info_list.dart';

class LargeRecipeTile extends StatelessWidget {
  final RecipeInfoModel? recipeInfo;
  final double? width;
  final double height;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double cardRadius;
  final double imgWidth;
  final double imgHeight;
  final double imgRadius;
  final double imgPaddingRight;
  final int titleMaxLines;
  final int maxMetaInfoItems;
  final bool isLoading;
  const LargeRecipeTile({
    super.key,
    required this.recipeInfo,
    this.width,
    this.height = 120,
    this.padding = const EdgeInsets.all(8),
    this.margin = const EdgeInsets.only(bottom: 15),
    this.cardRadius = 15,
    this.imgWidth = 110,
    this.imgHeight = 106,
    this.imgRadius = 16,
    this.imgPaddingRight = 30,
    this.titleMaxLines = 1,
    this.maxMetaInfoItems = 3,
    this.isLoading = false,
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return isLoading
        ? _buildLoadingSkeleton()
        : InkWell(
            onTap: () => NavHelper.push(
              context,
              RecipeDetailsScreen(
                recipeId: recipeInfo!.id,
                recipeInfo: recipeInfo,
              ),
            ),
            child: Container(
              width: width,
              height: height,
              padding: padding,
              margin: margin,
              decoration: BoxDecoration(
                color: theme.cardColor,
                boxShadow: [
                  BoxShadow(
                    color: theme.shadowColor,
                    offset: const Offset(2, 1),
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(cardRadius),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RecipeImage(
                    width: imgWidth,
                    height: imgHeight,
                    borderRadius: BorderRadius.circular(imgRadius),
                    imgUrl: recipeInfo!.image,
                  ),
                  SizedBox(width: imgPaddingRight),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recipeInfo!.title,
                          maxLines: titleMaxLines,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            height: 1.25,
                          ),
                        ),
                        RecipeMetaInfoList(
                          recipeMetaInfo: [
                            RecipeMetaInfo(
                              icon: Icons.favorite,
                              label: 'Likes',
                              value: '6',
                            ),
                            RecipeMetaInfo(
                              icon: Icons.groups,
                              label: 'Servings',
                              value: recipeInfo!.servings.toString(),
                            ),
                            RecipeMetaInfo(
                              icon: Icons.room_service,
                              label: 'Ready In',
                              value: recipeInfo!.readyInMinutes.toStringAsFixed(
                                0,
                              ),
                            ),
                            RecipeMetaInfo(
                              icon: Icons.paid,
                              label: 'Per Serving',
                              value: recipeInfo!.pricePerServing
                                  .toStringAsFixed(0),
                            ),
                          ].take(maxMetaInfoItems).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  LargeRecipeTileSkeleton _buildLoadingSkeleton() {
    return LargeRecipeTileSkeleton(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      cardRadius: cardRadius,
      imgWidth: imgWidth,
      imgHeight: imgHeight,
      imgRadius: imgRadius,
      imgPaddingRight: imgPaddingRight,
      titleMaxLines: titleMaxLines,
      maxMetaInfoItems: maxMetaInfoItems,
    );
  }
}
