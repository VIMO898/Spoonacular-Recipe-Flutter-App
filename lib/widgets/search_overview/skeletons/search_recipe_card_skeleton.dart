import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:app/providers/controllers/theme_state_controller_provider.dart';

class SearchRecipeCardSkeleton extends ConsumerWidget {
  final bool flatArrow;
  final bool isLast;
  const SearchRecipeCardSkeleton({
    super.key,
    this.flatArrow = true,
    this.isLast = false,
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
      margin: isLast ? EdgeInsets.zero : const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor,
            offset: const Offset(1, 1),
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(9),
        color: theme.cardColor,
      ),
      child: Row(
        children: [
          // Image skeleton
          Shimmer.fromColors(
            baseColor: baseColor,
            highlightColor: highlightColor,
            child: Container(
              padding: const EdgeInsets.only(right: 16, left: 2),
              width: 125,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(color: baseColor),
              ),
            ),
          ),
          // Title skeleton
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Shimmer.fromColors(
                baseColor: baseColor,
                highlightColor: highlightColor,
                child: Container(
                  height: 18,
                  width: double.infinity,
                  color: baseColor,
                ),
              ),
            ),
          ),
          // Arrow skeleton
          if (flatArrow)
            Shimmer.fromColors(
              baseColor: baseColor,
              highlightColor: highlightColor,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: baseColor,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
