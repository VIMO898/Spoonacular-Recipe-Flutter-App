import 'package:flutter/material.dart';

class RecipeMetaInfoList extends StatelessWidget {
  final List<RecipeMetaInfo> recipeMetaInfo;
  const RecipeMetaInfoList({super.key, required this.recipeMetaInfo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(recipeMetaInfo.length, (index) {
        return recipeMetaInfo[index];
      }),
    );
  }
}

class RecipeMetaInfo extends StatelessWidget {
  final String label;
  final IconData icon;
  final String value;
  const RecipeMetaInfo({
    super.key,
    required this.label,
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 26, color: theme.primaryColor),
              const SizedBox(width: 2),
              Text(
                value,
                style: textTheme.labelLarge!.copyWith(
                  height: 0,
                  fontSize: 14.8,
                ),
              ),
            ],
          ),
          Text(label, style: textTheme.labelMedium),
        ],
      ),
    );
  }
}
