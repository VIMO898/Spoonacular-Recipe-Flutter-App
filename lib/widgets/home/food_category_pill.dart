import 'package:app/extensions/string_extension.dart';
import 'package:flutter/material.dart';

import '../../models/basic_info_model.dart';

class FoodCategoryPill extends StatelessWidget {
  const FoodCategoryPill({
    super.key,
    this.width = 125.0,
    this.height = 175.0,
    this.isLastIndex = false,
    required this.category,
    required this.onTap,
  });

  final double height;
  final double width;
  final bool isLastIndex;
  final VoidCallback onTap;
  final BasicInfoModel category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: isLastIndex
            ? EdgeInsets.zero
            : const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: width * 0.68,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.grey.shade200,
                color: theme.appBarTheme.backgroundColor,
              ),
              child: Image.asset(
                category.image!,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              category.name.toCapitalizeFirstLetter(),
              style: textTheme.titleSmall?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
