import 'package:app/widgets/general/skeletons/recipe_image_skeleton.dart';
import 'package:app/widgets/general/skeletons/recipe_meta_info_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:app/providers/controllers/theme_state_controller_provider.dart';

class LargeRecipeTileSkeleton extends ConsumerWidget {
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
  const LargeRecipeTileSkeleton({
    super.key,
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
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image placeholder
          RecipeImageSkeleton(
            width: imgWidth,
            height: imgHeight,
            borderRadius: BorderRadius.circular(imgRadius),
          ),
          SizedBox(width: imgPaddingRight),
          // Text placeholders
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Shimmer.fromColors(
                  baseColor: baseColor,
                  highlightColor: highlightColor,
                  child: Container(
                    width: double.infinity,
                    height: 20,
                    color: baseColor,
                  ),
                ),
                const SizedBox(height: 6),
                // Subtitle
                Shimmer.fromColors(
                  baseColor: baseColor,
                  highlightColor: highlightColor,
                  child: Container(width: 150, height: 16, color: baseColor),
                ),
                // const SizedBox(height: 12),
                // Description
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(maxMetaInfoItems, (index) {
                    return RecipeMetaInfoSkeleton();
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
