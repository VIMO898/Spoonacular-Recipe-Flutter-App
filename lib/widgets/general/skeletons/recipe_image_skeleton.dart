import 'package:app/providers/controllers/theme_state_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

class RecipeImageSkeleton extends ConsumerWidget {
  const RecipeImageSkeleton({
    super.key,
    this.width,
    this.height,
    this.borderRadius = const BorderRadius.vertical(top: Radius.circular(12)),
  });
  final double? width;
  final double? height;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context, ref) {
    final isDarkMode =
        ref.watch(themeStateControllerProvider).themeMode == ThemeMode.dark;
    final baseColor = isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300;
    final highlightColor = isDarkMode
        ? Colors.grey.shade600
        : Colors.grey.shade100;
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(color: baseColor, borderRadius: borderRadius),
      ),
    );
  }
}
