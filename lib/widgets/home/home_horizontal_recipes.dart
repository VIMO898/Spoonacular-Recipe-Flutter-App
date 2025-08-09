import 'package:app/widgets/general/detailed_recipe_overview_card.dart';
import 'package:app/widgets/general/status_message.dart';
import 'package:app/widgets/home/home_recipe_card_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../models/recipe_info_model.dart';
import '../../models/spoonacular_result_model.dart';

class HomeHorizontalRecipes extends StatefulWidget {
  final String title;
  final Future<SpoonacularResultModel<RecipeInfoModel>> Function()
  recipesFutureBuilder;
  final VoidCallback onViewMore;
  const HomeHorizontalRecipes({
    super.key,
    required this.title,
    required this.recipesFutureBuilder,
    required this.onViewMore,
  });

  @override
  State<HomeHorizontalRecipes> createState() => _HomeHorizontalRecipesState();
}

class _HomeHorizontalRecipesState extends State<HomeHorizontalRecipes> {
  bool _isFutureTriggered = false;
  int _retryKey = 0;
  Future<SpoonacularResultModel<RecipeInfoModel>>? _future;
  void _handleFutureTrigger(VisibilityInfo visibilityInfo) {
    if (!_isFutureTriggered && visibilityInfo.visibleFraction > 0.01) {
      _isFutureTriggered = true;
      _future = widget.recipesFutureBuilder();
      setState(() {});
    }
  }

  void _handleRefreshAfterError() {
    _future = widget.recipesFutureBuilder();
    _retryKey++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final cardWidth = 260.0;
    final cardHeight = 360.0;
    return VisibilityDetector(
      key: Key(widget.title),
      onVisibilityChanged: !_isFutureTriggered ? _handleFutureTrigger : null,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: cardHeight + 70,
        width: double.infinity,
        child: Column(
          children: [
            HomeRecipeCardHeader(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
              title: widget.title,
              icon: FontAwesomeIcons.arrowRight,
              onIconTap: widget.onViewMore,
            ),
            Expanded(
              child: FutureBuilder(
                key: Key(_retryKey.toString()),
                future: _future,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return StatusMessage(
                      title: "Couldn't load data",
                      message:
                          'There may be something wrong with the your interent! Please check & come back to see if it works.',
                      onRefresh: _handleRefreshAfterError,
                    );
                  }
                  final isLoading =
                      snapshot.connectionState == ConnectionState.waiting ||
                      snapshot.connectionState == ConnectionState.none;
                  final data = snapshot.data;
                  final results = data?.results;
                  return ListView.builder(
                    itemCount: isLoading ? 3 : results!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final recipe = !isLoading ? results![index] : null;
                      return DetailedRecipeOverviewCard(
                        isLoading: isLoading,
                        width: cardWidth,
                        height: cardHeight,
                        recipeInfo: recipe,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
