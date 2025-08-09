import 'dart:async';

import 'package:app/constants/enums.dart';
import 'package:app/exceptions/spoonacular_exception.dart';
import 'package:app/extensions/string_extension.dart';
import 'package:app/models/complex_search_filter_model.dart';
import 'package:app/models/search_autocomplete_model.dart';
import 'package:app/providers/repositories/spoonacular_repository_provider.dart';
import 'package:app/screens/complex_search_filter_screen.dart';
import 'package:app/screens/recipe_details_screen.dart';
import 'package:app/screens/search_results_screen.dart';
import 'package:app/utils/nav_helper.dart';
import 'package:app/widgets/general/status_message.dart';
import 'package:app/widgets/search_overview/search_recipe_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  late FocusNode _searchFocusNode;
  String _searchedQuery = '';
  bool _isLoading = false;
  List<SearchAutocompleteModel>? _searchAutoCompletes;
  Timer? _debounce;
  SpoonacularException? _exception;

  void _handleSearchFieldChange(String query) {
    _searchedQuery = query;
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 400),
      () => _getSearchAutoCompletes(query),
    );
  }

  void _getSearchAutoCompletes(String searchQuery) async {
    try {
      // before sending request
      setState(() => _isLoading = true);
      // request
      final autoCompletes = await ref
          .read(spoonacularRepositoryProvider)
          .getSearchAutoCompletes(searchQuery);
      // after getting respone
      _searchAutoCompletes = autoCompletes;
      _isLoading = false;
      setState(() {});
    } on SpoonacularException catch (e) {
      _isLoading = false;
      _exception = e;
      _searchAutoCompletes = [];
      setState(() {});
    }
  }

  void _handleNavigationToSearchResults() {
    NavHelper.push(
      context,
      SearchResultsScreen.complex(
        title: "Search Results For '$_searchedQuery'",
        searchQuery: _searchedQuery,
        complexSearchFilters: ComplexSearchFilterModel(),
      ),
    );
  }

  void _handleNavigationToSearchFilters() {
    NavHelper.push(context, ComplexSearchFilterScreen());
  }

  void _handleNavigationToRecipeInfo(int recipeId) {
    NavHelper.push(context, RecipeDetailsScreen(recipeId: recipeId));
  }

  @override
  void initState() {
    super.initState();
    _searchFocusNode = FocusNode();
    _searchFocusNode.requestFocus();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBarTitleStyle = theme.appBarTheme.titleTextStyle?.copyWith(
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: IconButton(
          onPressed: () => NavHelper.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
        title: TextField(
          focusNode: _searchFocusNode,
          style: appBarTitleStyle,
          onChanged: _handleSearchFieldChange,
          onSubmitted: (_) => _handleNavigationToSearchResults(),
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            onPressed: _handleNavigationToSearchResults,
            icon: Icon(Icons.search_outlined),
          ),
          IconButton(
            onPressed: _handleNavigationToSearchFilters,
            icon: Icon(Icons.tune_outlined),
          ),
        ],
      ),
      body: _exception != null
          ? StatusMessage(
              padding: const EdgeInsets.fromLTRB(18, 20, 18, 150),

              title: _exception!.status,
              message: _exception!.message,
            )
          // if list is null & user has yet to search
          : _searchedQuery.isEmpty
          ? StatusMessage(
              padding: const EdgeInsets.fromLTRB(18, 20, 18, 150),
              icon: Icons.search,
              title: 'Type to Search',
              message:
                  'In order to see suitable results based on your search query',
            )
          // if user has searched but no results are are found
          : _searchedQuery.isNotEmpty && _searchAutoCompletes == null
          ? StatusMessage(
              padding: const EdgeInsets.fromLTRB(18, 20, 18, 150),
              title: 'Nothing Found',
              message:
                  "We looked everywhere but couldn't find what you're looking for. Please try some other keywords",
            )
          : ListView.builder(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              itemCount: _isLoading ? 10 : _searchAutoCompletes!.length,
              itemBuilder: (context, index) {
                final suggestion = !_isLoading
                    ? _searchAutoCompletes![index]
                    : null;
                // return ListTile(title: Text(suggestion.title));
                final imgUrl = !_isLoading
                    ? 'https://img.spoonacular.com/recipes/${suggestion!.id}-312x231.${suggestion.imageType}'
                    : null;

                return SearchRecipeCard(
                  isLoading: _isLoading,
                  flatArrow: false,
                  title: suggestion?.title.toCapitalizeFirstLetter(),
                  imgSource: ImageSource.network,
                  imgUrl: imgUrl,
                  onTap: () => _handleNavigationToRecipeInfo(suggestion!.id),
                );
              },
            ),
    );
  }
}
