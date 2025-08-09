import 'dart:developer';

import 'package:app/constants/enums.dart';
import 'package:app/constants/kitchen_equipment_enum.dart';
import 'package:app/constants/recipe_sort_enum.dart';
import 'package:app/extensions/string_extension.dart';
import 'package:app/models/complex_search_filter_model.dart';
import 'package:app/models/basic_info_model.dart';
import 'package:app/providers/controllers/recipe_preference_controller_provider.dart';
import 'package:app/providers/general/all_diet_provider.dart';
import 'package:app/providers/general/all_intolerances_provider.dart';
import 'package:app/providers/general/all_recipe_cuisines_provider.dart';
import 'package:app/providers/general/all_recipe_types_provider.dart';
import 'package:app/providers/general/common_ingredients_provider.dart';
import 'package:app/screens/search_results_screen.dart';
import 'package:app/utils/form_validation.dart';
import 'package:app/utils/general_reusable_functions.dart';
import 'package:app/widgets/complex_search_filter/heading_text.dart';
import 'package:app/widgets/complex_search_filter/macro_nutrient_fields.dart';
import 'package:app/widgets/complex_search_filter/min_max_fields.dart';
import 'package:app/widgets/complex_search_filter/mineral_fields.dart';
import 'package:app/widgets/complex_search_filter/number_field.dart';
import 'package:app/widgets/complex_search_filter/other_fields.dart';
import 'package:app/widgets/complex_search_filter/vitamin_fields.dart';
import 'package:app/widgets/general/full_width_wide_elevated_button.dart';
import 'package:app/widgets/general/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/nav_helper.dart';
import '../widgets/complex_search_filter/choice_chips.dart';
import '../widgets/complex_search_filter/search_filter_switch_tile.dart';
import '../widgets/complex_search_filter/outlined_dropdown.dart';
import '../widgets/general/primary_chip.dart';
import 'selectable_list_view_screen.dart';

class ComplexSearchFilterScreen extends ConsumerStatefulWidget {
  const ComplexSearchFilterScreen({super.key});

  @override
  ConsumerState<ComplexSearchFilterScreen> createState() =>
      _ComplexSearchFilterScreenState();
}

class _ComplexSearchFilterScreenState
    extends ConsumerState<ComplexSearchFilterScreen> {
  final _formKey = GlobalKey<FormState>();
  var _searchFilters = ComplexSearchFilterModel();
  String _searchedQuery = '';
  List<BasicInfoModel> _includedCuisines = [];
  List<BasicInfoModel> _excludedCuisines = [];
  List<BasicInfoModel> _intolerences = [];
  List<BasicInfoModel> _diets = [];
  List<BasicInfoModel> _equipment = [];
  List<BasicInfoModel> _includedIngredients = [];
  List<BasicInfoModel> _excludedIngredients = [];
  List<BasicInfoModel> _tags = [];
  @override
  void initState() {
    super.initState();
    final rp = ref.read(recipePreferenceControllerProvider);

    _excludedCuisines = rp.excludedCuisines;
    _diets = rp.preferredDiets;
    _excludedIngredients = rp.excludedIngredients;
    _intolerences = rp.intolerences;
  }

  void _handleSearchSubmission() {
    _searchFilters = _searchFilters.copyWith(
      cuisine: basicInfoToNameJoinedKebabCaseList(_includedCuisines),
      excludeCuisine: basicInfoToNameJoinedKebabCaseList(_excludedCuisines),
      diets: basicInfoToNameJoinedKebabCaseList(_diets, '|'),
      intolerances: basicInfoToNameJoinedKebabCaseList(_intolerences),
      equipment: basicInfoToNameJoinedKebabCaseList(_equipment),
      includeIngredients: basicInfoToNameJoinedKebabCaseList(
        _includedIngredients,
      ),
      excludeIngredients: basicInfoToNameJoinedKebabCaseList(
        _excludedIngredients,
      ),
      tags: basicInfoToNameJoinedKebabCaseList(_tags),
    );
    log(_searchFilters.toString());
    final formState = _formKey.currentState;
    final isFormValid = formState?.validate();
    if (isFormValid == null || !isFormValid) return;
    NavHelper.pushWithTransition(
      context,
      duration: const Duration(milliseconds: 400),
      transition: TransitionType.slideFromRight,
      SearchResultsScreen.complex(
        title: 'Complex Search Results',
        searchQuery: _searchedQuery.isNotEmpty ? _searchedQuery : null,
        complexSearchFilters: _searchFilters,
      ),
    );
  }

  void _handleMinMaxChange(Map<String, dynamic> updatedMinMax) {
    setState(() {
      final updatedSearchFilters = _searchFilters.toMap()
        ..update(updatedMinMax.keys.first, (_) => updatedMinMax.values.first);
      _searchFilters = ComplexSearchFilterModel.fromMap(updatedSearchFilters);
    });
  }

  @override
  Widget build(BuildContext context) {
    final allCuisines = ref.watch(allRecipeCuisinesProvider);
    final allDiets = ref.watch(allDietProvider);
    final allKitchenEquipment = KitchenEquipment.values
        .map((e) => BasicInfoModel(name: e.name))
        .toList();
    final allTags = RecipeTag.values
        .map((t) => BasicInfoModel(name: t.name))
        .toList();
    final allIntolerences = ref.watch(allIntolerencesProvider);
    final commonIngredients = ref
        .watch(categorizedIngredientsProvider)
        .map((c) => c.ingredients)
        .expand((ingredientList) => ingredientList)
        .toList();
    return Scaffold(
      appBar: AppBar(title: Text('Complex Search'), centerTitle: true),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(14, 2, 14, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingText('Search Query (Optional)'),
              SearchField(
                onChanged: (updatedQuery) => _searchedQuery = updatedQuery,
              ),
              _buildChoiceChips(
                'Cuisines',
                allCuisines
                    .where((c) => !_excludedCuisines.contains(c))
                    .toList(),
                _includedCuisines,
                (choice) => _includedCuisines.remove(choice),
                (updatedSelectables) => _includedCuisines = updatedSelectables,
              ),
              _buildChoiceChips(
                'Exclude Cuisines',
                allCuisines
                    .where((c) => !_includedCuisines.contains(c))
                    .toList(),
                _excludedCuisines,
                (choice) => _excludedCuisines.remove(choice),
                (updatedSelectables) => _excludedCuisines = updatedSelectables,
              ),
              _buildChoiceChips(
                'Diets',
                allDiets,
                _diets,
                (choice) => _diets.remove(choice),
                (updatedSelectables) => _diets = updatedSelectables,
              ),
              _buildChoiceChips(
                'Equipment',
                allKitchenEquipment,
                _equipment,
                (choice) => _equipment.remove(choice),
                (updatedChoices) => _equipment = updatedChoices,
              ),
              _buildChoiceChips(
                'Ingredients',
                commonIngredients
                    .where((i) => !_excludedIngredients.contains(i))
                    .toList(),
                _includedIngredients,
                (choice) => _includedIngredients.remove(choice),
                (updatedSelectables) =>
                    _includedIngredients = updatedSelectables,
              ),
              _buildChoiceChips(
                'Exclude Ingredients',
                commonIngredients
                    .where((i) => !_includedIngredients.contains(i))
                    .toList(),
                _excludedIngredients,
                (choice) => _excludedIngredients.remove(choice),
                (updatedSelectables) =>
                    _excludedIngredients = updatedSelectables,
              ),
              _buildChoiceChips(
                'Intolerences',
                allIntolerences,
                _intolerences,
                (choice) => _intolerences.remove(choice),
                (updatedSelectables) => _intolerences = updatedSelectables,
              ),
              _buildChoiceChips(
                'Tags',
                allTags,
                _tags,
                (choice) => _tags.remove(choice),
                (updatedSelectables) => _tags = updatedSelectables,
              ),
              SearchFilterSwitchTile(
                label: 'Ignore Pantry',
                value: _searchFilters.ignorePantry ?? false,
                onChanged: (val) => setState(
                  () => _searchFilters = _searchFilters.copyWith(
                    ignorePantry: val,
                  ),
                ),
              ),
              _buildRecipeTypeDropdown(),
              _buildRecipeSortDropdown(),
              _buildSortDirectionDropdown(),
              HeadingText('Max Ready Time'),
              NumberField(
                hintText: 'Cooking Time Minutes',
                onChanged: (val) => _searchFilters = _searchFilters.copyWith(
                  maxReadyTime: int.tryParse(val),
                ),
                validator: (val) => FormValidation.validateIntField(
                  value: val,
                  min: 2,
                  max: 240,
                ),
              ),
              MinMaxFields(
                label: 'Servings',
                fieldKey: 'Servings',
                allowedMin: 1,
                allowedMax: 8,
                onUpdateSearchFilter: _handleMinMaxChange,
              ),

              MacroNutrientFields(
                searchFilters: _searchFilters,
                onFieldUpdate: _handleMinMaxChange,
              ),
              VitaminFields(
                searchFilters: _searchFilters,
                onFieldUpdate: _handleMinMaxChange,
              ),
              MineralFields(
                searchFilters: _searchFilters,
                onFieldUpdate: _handleMinMaxChange,
              ),
              OtherFields(
                searchFilters: _searchFilters,
                onFieldUpdate: _handleMinMaxChange,
              ),
              FullWidthWideElevatedButton(
                height: 70,
                padding: const EdgeInsets.only(top: 20),
                text: 'Search',
                onPressed: _handleSearchSubmission,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecipeTypeDropdown() {
    final types = ref.watch(allRecipeTypesProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText('Type'),
        OutlinedDropdown(
          value: _searchFilters.type ?? types.first.name,
          dropdownMenuItems: types
              .map(
                (type) => DropdownMenuItem(
                  value: type.name,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage(type.image!),
                      ),
                      const SizedBox(width: 12),
                      Text(type.name.toCamelCase()),
                    ],
                  ),
                ),
              )
              .toList(),
          onChanged: (updatedValue) =>
              _searchFilters = _searchFilters.copyWith(type: updatedValue),
        ),
      ],
    );
  }

  Widget _buildRecipeSortDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText('Sort'),
        OutlinedDropdown(
          value: _searchFilters.sort ?? RecipeSort.popularity.name,
          dropdownMenuItems: RecipeSort.values
              .map(
                (sort) => DropdownMenuItem(
                  value: sort.name,
                  child: Text(sort.name.toCamelCase()),
                ),
              )
              .toList(),
          onChanged: (updatedValue) =>
              _searchFilters = _searchFilters.copyWith(sort: updatedValue),
        ),
      ],
    );
  }

  Widget _buildSortDirectionDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText('Sort Direction'),
        OutlinedDropdown(
          value: _searchFilters.sortDirection ?? SortDirection.asc.name,
          dropdownMenuItems: SortDirection.values
              .map(
                (sortDir) => DropdownMenuItem(
                  value: sortDir.name,
                  child: Text(switch (sortDir) {
                    SortDirection.asc => 'Ascending',
                    SortDirection.desc => 'Descending',
                  }),
                ),
              )
              .toList(),
          onChanged: (updatedValue) => _searchFilters = _searchFilters.copyWith(
            sortDirection: updatedValue,
          ),
        ),
      ],
    );
  }

  Widget _buildChoiceChips(
    String title,
    List<BasicInfoModel> allChoices,
    List<BasicInfoModel> selectedChoices,
    void Function(BasicInfoModel choice) onRemove,
    void Function(List<BasicInfoModel> updatedChoices) onUpdateAllChoices,
  ) {
    return ChoiceChips(
      title: title,
      selectedChoices: selectedChoices,
      choiceBuilder: (choice) => PrimaryChip(
        onRemove: () => setState(() => onRemove(choice)),
        title: choice.name,
        imgSource: choice.imgSource ?? ImageSource.asset,
        imgUrl: choice.image,
      ),
      onAddChoices: () async {
        final updatedSelectables = await NavHelper.push<List<BasicInfoModel>>(
          context,
          SeletableListViewScreen(
            title: title,
            allSelectables: allChoices,
            selectedSelectables: selectedChoices,
          ),
        );
        if (updatedSelectables == null) return;
        onUpdateAllChoices(updatedSelectables);
        setState(() {});
      },
    );
  }
}
