import 'dart:developer';

import 'package:app/animations/delayed_display_animation.dart';
import 'package:app/constants/enums.dart';
import 'package:app/exceptions/spoonacular_exception.dart';
import 'package:app/models/basic_search_filters_model.dart';
import 'package:app/models/complex_search_filter_model.dart';
import 'package:app/models/recipe_info_model.dart';
import 'package:app/models/recipe_search_result_model.dart';
import 'package:app/models/spoonacular_result_model.dart';
import 'package:app/providers/repositories/spoonacular_repository_provider.dart';
import 'package:app/widgets/general/centered_loading_beat.dart';
import 'package:app/widgets/general/status_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/search_results/sliver_large_tile_list_view.dart';
import '../widgets/search_results/sliver_recipe_gride_view.dart';

class SearchResultsScreen extends ConsumerStatefulWidget {
  final String title;
  final SearchResultType searchType;
  final String? searchQuery;
  final bool insertFoundResultsText;
  final BasicSearchFiltersModel? searchFilters;
  final ComplexSearchFilterModel? complexSearchFilters;
  const SearchResultsScreen.random({
    super.key,
    required this.title,
    required this.searchFilters,
    this.searchQuery,
    this.insertFoundResultsText = false,
  }) : searchType = SearchResultType.random,
       complexSearchFilters = null;

  const SearchResultsScreen.complex({
    super.key,
    required this.title,
    required this.complexSearchFilters,
    this.searchQuery,
    this.insertFoundResultsText = false,
  }) : searchType = SearchResultType.complex,
       searchFilters = null;

  @override
  ConsumerState<SearchResultsScreen> createState() =>
      _RandomSearchResultsGridViewScreenState();
}

class _RandomSearchResultsGridViewScreenState
    extends ConsumerState<SearchResultsScreen> {
  late ScrollController _scrollController;
  bool _isLoading = false;
  bool _isLoadingMore = false;
  SpoonacularException? _exception;
  SpoonacularResultModel? _spoonacularData;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    _loadRecipes();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final userAtBottom =
        _scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100;
    final recipesYetToLoad =
        _spoonacularData != null &&
        _spoonacularData!.totalResults >
            (_spoonacularData!.number + _spoonacularData!.offset);
    if (userAtBottom && !_isLoadingMore && recipesYetToLoad) {
      _loadRecipes();
    }
  }

  Future<void> _loadRecipes() async {
    final repo = ref.read(spoonacularRepositoryProvider);
    try {
      final resultsAlreadyLoaded = _spoonacularData != null;
      resultsAlreadyLoaded ? _isLoadingMore = true : _isLoading = true;
      setState(() {});
      final numberOfRecipesToLoad = 10;

      final totalResults = _spoonacularData?.totalResults ?? 0;
      final currentOffset = _spoonacularData?.offset ?? 0;
      final lastBatchCount = _spoonacularData?.number ?? 0;

      final numberOfRecipesLoaded = currentOffset + lastBatchCount;
      final remainingResults = totalResults - numberOfRecipesLoaded;

      final nextBatchSize = remainingResults < numberOfRecipesToLoad
          ? remainingResults
          : numberOfRecipesToLoad;

      final nextOffset = numberOfRecipesLoaded + nextBatchSize;
      // SpoonacularResultModel? newResults;
      switch (widget.searchType) {
        case SearchResultType.complex:
          final newResults = await repo.searchRecipesWithComplexFilters(
            query: widget.searchQuery,
            filters: widget.complexSearchFilters!,
            offset: nextOffset,
            number: numberOfRecipesToLoad,
          );
          _spoonacularData = resultsAlreadyLoaded
              ? newResults.copyWith(
                  results: List<RecipeSearchResultModel>.from([
                    ..._spoonacularData!.results,
                    ...newResults.results,
                  ]),
                )
              : newResults;
        case SearchResultType.random:
          final newResults = await repo.searchRecipesWithBasicFilters(
            query: widget.searchQuery,
            filters: widget.searchFilters!,
            offset: nextOffset,
            number: numberOfRecipesToLoad,
          );
          _spoonacularData = resultsAlreadyLoaded
              ? newResults.copyWith(
                  results: List<RecipeInfoModel>.from([
                    ..._spoonacularData!.results,
                    ...newResults.results,
                  ]),
                )
              : newResults;
      }

      resultsAlreadyLoaded ? _isLoadingMore = false : _isLoading = false;
      setState(() {});
    } on SpoonacularException catch (e) {
      _isLoading = false;
      _exception = e;
      setState(() {});
    }
  }

  Future<void> _handleRefreshContent() async {
    if (_isLoading) return;
    _spoonacularData = null;
    _exception = null;
    _isLoadingMore = false;
    _loadRecipes();
  }

  @override
  Widget build(BuildContext context) {
    // final recipeRepo = ref.watch(recipesRepositoryProvider);
    log((_spoonacularData?.totalResults).toString());
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: RefreshIndicator(
        displacement: 10,
        onRefresh: _handleRefreshContent,
        child: _exception != null
            ? StatusMessage(
                padding: const EdgeInsets.fromLTRB(18, 20, 18, 150),
                title: _exception!.status,
                message: _exception!.message,
                onRefresh: _handleRefreshContent,
              )
            : _spoonacularData != null && _spoonacularData!.results.isEmpty
            ? StatusMessage(
                padding: const EdgeInsets.fromLTRB(18, 20, 18, 150),

                title: 'Empty Search Results',
                message:
                    'Try different recipe keywords to find what you are looking for!',
              )
            : DelayedDisplayAnimation(
                initialSlidingOffset: const Offset(0, -0.06),
                duration: const Duration(milliseconds: 1200),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                  child: CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      if (!_isLoading && widget.insertFoundResultsText)
                        SliverPadding(
                          padding: const EdgeInsets.only(top: 14, bottom: 10),
                          sliver: SliverToBoxAdapter(
                            child: Text(
                              "We've found ${_spoonacularData?.totalResults ?? '0'} for you!",
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      switch (widget.searchType) {
                        SearchResultType.complex => SliverRecipeGridView(
                          isLoading: _isLoading,
                          searchedRecipes:
                              (_spoonacularData?.results
                                  as List<RecipeSearchResultModel>?),
                        ),
                        SearchResultType.random =>
                          SliverLargeRecipeTileListView(
                            isLoading: _isLoading,
                            recipesInfo:
                                _spoonacularData?.results
                                    as List<RecipeInfoModel>?,
                          ),
                      },
                      if (_isLoadingMore)
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          sliver: SliverToBoxAdapter(
                            child: CenteredLoadingBeat(),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

// return RecipeGridView(infoRecipes: randomRecipes);
