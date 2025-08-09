import 'package:app/exceptions/spoonacular_exception.dart';
import 'package:app/models/recipe_info_model.dart';
import 'package:app/widgets/general/status_message.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../models/spoonacular_result_model.dart';
import '../general/large_recipe_tile.dart';
import 'home_recipe_card_header.dart';

class HomeVerticalRecipes extends StatefulWidget {
  final String title;
  final Future<SpoonacularResultModel<RecipeInfoModel>> Function()
  recipesFutureBuilder;
  final VoidCallback onViewMore;
  const HomeVerticalRecipes({
    super.key,
    required this.title,
    required this.recipesFutureBuilder,
    required this.onViewMore,
  });

  @override
  State<HomeVerticalRecipes> createState() => _HomeVerticalRecipesState();
}

class _HomeVerticalRecipesState extends State<HomeVerticalRecipes> {
  late CarouselSliderController _carouselController;
  int _currPage = 0;
  bool _isLoading = true;
  SpoonacularException? _exception;
  List<RecipeInfoModel>? _results;
  bool _isFutureTriggered = false;
  @override
  void initState() {
    super.initState();
    _carouselController = CarouselSliderController();
  }

  void _handleAddPageChangeListener(int currPage, _) {
    _currPage = currPage;
    setState(() {});
  }

  void _handleChangePage(int index) {
    _carouselController.animateToPage(
      index,
      duration: Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  void _handleFutureTrigger(VisibilityInfo visibilityInfo) {
    if (!_isFutureTriggered && visibilityInfo.visibleFraction > 0.01) {
      _isFutureTriggered = true;
      _loadResults();
    }
  }

  Future<void> _loadResults() async {
    try {
      _exception = null;
      _isLoading = true;
      setState(() {});
      final response = await widget.recipesFutureBuilder();
      _results = response.results;
      _isLoading = false;
      setState(() {});
    } on SpoonacularException catch (e) {
      _isLoading = false;
      _exception = e;
      _results = null;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return VisibilityDetector(
      key: Key(widget.title),
      onVisibilityChanged: !_isFutureTriggered ? _handleFutureTrigger : null,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 480,
        // color: Colors.red,
        width: double.infinity,
        child: Column(
          children: [
            HomeRecipeCardHeader(
              title: widget.title,
              icon: FontAwesomeIcons.arrowRight,
              onIconTap: widget.onViewMore,
            ),
            // const SizedBox(height: 20),
            Expanded(
              child: _exception != null
                  ? StatusMessage(
                      title: _exception!.status,
                      message: _exception!.message,
                      onRefresh: _loadResults,
                    )
                  : CarouselSlider.builder(
                      carouselController: _carouselController,

                      itemCount: _isLoading ? 1 : 3,
                      options: CarouselOptions(
                        onPageChanged: _handleAddPageChangeListener,
                        height: double.infinity,
                        viewportFraction: 1,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.35,
                        enableInfiniteScroll: false,
                        scrollPhysics: BouncingScrollPhysics(),
                      ),

                      itemBuilder: (context, pageIndex, realIndex) {
                        // double difference = (_currPage - pageIndex).abs();
                        // double scale = (1 - difference * 0.2).clamp(0.8, 1);

                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            final i = pageIndex * 3 + index;
                            final recipe = !_isLoading ? _results![i] : null;
                            return LargeRecipeTile(
                              isLoading: _isLoading,
                              recipeInfo: recipe,
                            );
                          },
                        );
                      },
                    ),
            ),
            if (!_isLoading && _exception == null && _results != null)
              AnimatedSmoothIndicator(
                // PageController,
                activeIndex: _currPage,
                count: 3,
                effect: WormEffect(
                  activeDotColor: theme.primaryColor,
                  dotColor: Colors.grey.shade400,
                ),
                onDotClicked: _handleChangePage,
              ),
          ],
        ),
      ),
    );
  }
}
