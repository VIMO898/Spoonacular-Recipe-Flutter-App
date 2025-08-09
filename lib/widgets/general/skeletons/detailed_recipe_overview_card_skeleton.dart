import 'dart:math';

import 'package:app/providers/controllers/theme_state_controller_provider.dart';
import 'package:app/widgets/general/skeletons/recipe_image_skeleton.dart';
import 'package:app/widgets/general/skeletons/recipe_meta_info_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

class DetailedRecipeOverviewCardSkeleton extends ConsumerWidget {
  final double width;
  final double height;
  final double rightPadding;
  final EdgeInsets contentPadding;
  const DetailedRecipeOverviewCardSkeleton({
    super.key,
    this.width = 260.0,
    this.height = 345.0,
    this.rightPadding = 16,
    this.contentPadding = const EdgeInsets.fromLTRB(14, 16, 14, 10),
  });

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context);
    final isDarkMode =
        ref.watch(themeStateControllerProvider).themeMode == ThemeMode.dark;
    final baseColor = isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300;
    final highlightColor = isDarkMode
        ? Colors.grey.shade600
        : Colors.grey.shade100;
    return Container(
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
          // Image skeleton
          RecipeImageSkeleton(
            width: double.infinity,
            height: min(height * .635, 160),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          ),
          // Content skeleton
          Padding(
            padding: contentPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title skeleton
                Shimmer.fromColors(
                  baseColor: baseColor,
                  highlightColor: highlightColor,
                  child: Container(
                    width: double.infinity,
                    height: 18,
                    color: baseColor,
                  ),
                ),
                const SizedBox(height: 8),
                // Meta info skeleton
                Row(
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: RecipeMetaInfoSkeleton(),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                // Summary skeleton
                Column(
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Shimmer.fromColors(
                        baseColor: baseColor,
                        highlightColor: highlightColor,
                        child: Container(
                          width: double.infinity,
                          height: 12,
                          color: highlightColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
