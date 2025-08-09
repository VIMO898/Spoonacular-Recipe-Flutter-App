import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:app/providers/controllers/theme_state_controller_provider.dart';

class RecipeOverviewCardSkeleton extends ConsumerWidget {
  final double? width;
  final double height;
  final double rightPadding;
  final EdgeInsets contentPadding;
  const RecipeOverviewCardSkeleton({
    super.key,
    required this.height,
    this.width,
    this.rightPadding = 16,
    this.contentPadding = const EdgeInsets.fromLTRB(14, 14, 14, 10),
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
          Shimmer.fromColors(
            baseColor: baseColor,
            highlightColor: highlightColor,
            child: Container(
              width: double.infinity,
              height: min(height * .635, 150),
              decoration: BoxDecoration(
                color: baseColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
              ),
            ),
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
                    decoration: BoxDecoration(
                      color: baseColor,
                      borderRadius: BorderRadius.circular(4),
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
