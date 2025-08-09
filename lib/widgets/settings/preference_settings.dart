import 'package:app/models/basic_info_model.dart';
import 'package:app/providers/general/all_diet_provider.dart';
import 'package:app/providers/general/all_intolerances_provider.dart';
import 'package:app/providers/general/all_recipe_cuisines_provider.dart';
import 'package:app/screens/exclude_ingredient_screen.dart';
import 'package:app/utils/nav_helper.dart';
import 'package:app/widgets/settings/categorized_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/controllers/recipe_preference_controller_provider.dart';
import '../../screens/selectable_list_view_screen.dart';
import 'setting_tile.dart';

class PreferenceSettings extends ConsumerWidget {
  const PreferenceSettings({super.key});
  void _navigateToSelectableScreen(
    BuildContext context,
    String title,
    List<BasicInfoModel> allSelectables,
    List<BasicInfoModel> selectedSelectables,
    void Function(List<BasicInfoModel> updatedSelectables)
    onUpdateAllSelectables,
  ) async {
    final updatedSelectables = await NavHelper.push<List<BasicInfoModel>>(
      context,
      SeletableListViewScreen(
        title: title,
        allSelectables: allSelectables,
        selectedSelectables: selectedSelectables,
      ),
    );
    if (updatedSelectables == null) return;
    onUpdateAllSelectables(updatedSelectables);
  }

  @override
  Widget build(BuildContext context, ref) {
    final preferences = ref.watch(recipePreferenceControllerProvider);
    final allCuisines = ref.watch(allRecipeCuisinesProvider);
    final allDiets = ref.watch(allDietProvider);
    final allIntolerences = ref.watch(allIntolerencesProvider);
    // final allCuisines = ref.watch(allRecipeCuisinesProvider);

    return CategorizedSettings(
      category: 'Preferences',
      settingTiles: [
        SettingTile(
          title: 'Exclude Cuisines',
          localIconImg: 'assets/images/settings/cuisine.png',
          onTap: () {
            _navigateToSelectableScreen(
              context,
              'Exclude Cuisines',
              allCuisines,
              preferences.excludedCuisines,
              (updatedCuisines) => ref
                  .read(recipePreferenceControllerProvider.notifier)
                  .updateCuisines(updatedCuisines),
            );
          },
        ),
        SettingTile(
          title: 'Exlude Ingredients',
          localIconImg: 'assets/images/settings/ingredients.png',
          onTap: () {
            // _navigateToSelectableScreen(context, 'Exclude Ingredients', allCuisines, preferences.excludedIngredients, (updatedIngredients) => ref.read(recipePreferenceControllerProvider.notifier).updateIngredients(updatedIngredients));
            NavHelper.push(context, ExcludeIngredientScreen());
          },
        ),
        SettingTile(
          title: 'Diet',
          localIconImg: 'assets/images/settings/diet.png',
          onTap: () {
            _navigateToSelectableScreen(
              context,
              'Diet',
              allDiets,
              preferences.preferredDiets,
              (updatedDiets) => ref
                  .read(recipePreferenceControllerProvider.notifier)
                  .updateDiets(updatedDiets),
            );
          },
        ),
        SettingTile(
          title: 'Intolerences',
          localIconImg: 'assets/images/settings/intolerence.png',
          onTap: () {
            _navigateToSelectableScreen(
              context,
              'Intolerences',
              allIntolerences,
              preferences.intolerences,
              (updatedIntolerences) => ref
                  .read(recipePreferenceControllerProvider.notifier)
                  .updateIntolerences(updatedIntolerences),
            );
          },
        ),
      ],
    );
  }
}
