import 'package:app/animations/delayed_display_animation.dart';
import 'package:app/models/basic_info_model.dart';
import 'package:flutter/material.dart';

import '../constants/enums.dart';
import '../widgets/search_overview/search_tile_list_view.dart';

class SearchCategoriesListViewScreen extends StatelessWidget {
  final String title;
  final SearchCategoryTileType tileType;
  final ImageSource imageSource;
  final List<BasicInfoModel> categories;
  final void Function(BasicInfoModel category) onTileTap;
  const SearchCategoriesListViewScreen({
    super.key,
    required this.title,
    required this.tileType,
    required this.categories,
    required this.imageSource,
    required this.onTileTap,
  });

  @override
  Widget build(BuildContext context) {
    final animationDuration = const Duration(milliseconds: 800);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: DelayedDisplayAnimation(
        initialSlidingOffset: Offset(0, -0.2),
        duration: const Duration(milliseconds: 1200),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: SearchCategoryTileListView(
            height: tileType == SearchCategoryTileType.normal ? 323 : 376,
            minimized: false,
            imgSource: imageSource,
            tileType: tileType,
            animationDuration: animationDuration,
            animationDelay: Duration.zero,
            searchCategories: categories,
            onItemTap: onTileTap,
          ),
        ),
      ),
    );
  }
}
