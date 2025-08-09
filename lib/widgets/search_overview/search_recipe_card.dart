import 'package:app/widgets/search_overview/skeletons/search_recipe_card_skeleton.dart';
import 'package:flutter/material.dart';

import '../../constants/enums.dart';

class SearchRecipeCard extends StatelessWidget {
  final bool isLoading;
  final String? title;
  final String? imgUrl;
  final VoidCallback? onTap;
  final ImageSource imgSource;
  final bool flatArrow;
  final bool isLast;
  const SearchRecipeCard({
    super.key,
    required this.title,
    required this.imgUrl,
    required this.onTap,
    this.isLoading = false,
    this.imgSource = ImageSource.network,
    this.flatArrow = true,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return isLoading
        ? SearchRecipeCardSkeleton()
        : GestureDetector(
            onTap: onTap,
            child: Container(
              margin: isLast
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(bottom: 12),
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
                  Container(
                    padding: const EdgeInsets.only(right: 16, left: 2),
                    width: 125,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: imgSource == ImageSource.network
                          ? Image.network(imgUrl!, fit: BoxFit.cover)
                          : Image.asset(imgUrl!, fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title!,
                            style: textTheme.titleSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // if (flatArrow) const Spacer(),
                        if (flatArrow) const Icon(Icons.trending_flat),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
