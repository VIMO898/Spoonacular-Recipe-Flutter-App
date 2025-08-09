import 'package:app/constants/enums.dart';
import 'package:app/extensions/string_extension.dart';
import 'package:flutter/material.dart';

import '../../models/basic_info_model.dart';
import '../general/more_text_button.dart';
import 'search_list_tile.dart';
import 'search_recipe_card.dart';

class SearchCategoryTileListView extends StatelessWidget {
  final SearchCategoryTileType tileType;
  final bool minimized;
  final VoidCallback? onMore;
  final double height;
  final String? headingText;
  final EdgeInsets headingTextPadding;
  final void Function(BasicInfoModel category) onItemTap;
  final ImageSource imgSource;
  final List<BasicInfoModel> searchCategories;
  final Duration animationDelay;
  final Duration animationDuration;
  const SearchCategoryTileListView({
    super.key,
    this.imgSource = ImageSource.network,
    this.minimized = true,
    this.headingText,
    this.onMore,
    this.headingTextPadding = const EdgeInsets.symmetric(vertical: 18),
    required this.tileType,
    required this.height,
    required this.onItemTap,
    required this.animationDuration,
    required this.animationDelay,
    required this.searchCategories,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final minimizedLength = 3;
    return !minimized
        ? _buildCategoryListView(minimizedLength)
        : SizedBox(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (headingText != null)
                  Padding(
                    padding: headingTextPadding,
                    child: Text(headingText!, style: textTheme.headlineSmall),
                  ),
                Expanded(child: _buildCategoryListView(minimizedLength)),
              ],
            ),
          );
  }

  ListView _buildCategoryListView(int minimizedLength) {
    return ListView.builder(
      padding: !minimized ? const EdgeInsets.only(top: 12) : EdgeInsets.zero,
      physics: minimized
          ? const NeverScrollableScrollPhysics()
          : BouncingScrollPhysics(),
      itemCount: minimized
          ? searchCategories.take(minimizedLength).length + 1
          : searchCategories.length,
      itemBuilder: (context, index) {
        final category = searchCategories[index];
        final isLastItem = minimized
            ? index >= minimizedLength - 1
            : index >= searchCategories.length - 1;
        if (minimized && index >= minimizedLength) {
          return MoreTextButton(onTap: onMore);
        }
        final title = category.name.toCamelCase();
        final imgUrl = category.image;

        return tileType == SearchCategoryTileType.normal
            ? SearchListTile(
                title: title,
                imgUrl: imgUrl!,
                imgSource: imgSource,
                onTap: () => onItemTap(category),
                isLast: isLastItem,
              )
            : SearchRecipeCard(
                title: title,
                imgUrl: imgUrl!,
                imgSource: imgSource,
                isLast: isLastItem,
                onTap: () => onItemTap(category),
              );
      },
    );
  }
}
