import 'package:app/constants/general.dart';
import 'package:app/providers/controllers/theme_state_controller_provider.dart';
import 'package:app/theming/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path;

import 'screens/screens_with_bottom_nav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  final appDocDir = await path.getApplicationDocumentsDirectory();
  await Hive.initFlutter('${appDocDir.path}/Spoonacular_Recipe_App');
  await Hive.openBox(recipePreferencesBoxName);
  await Hive.openBox(recipeWishlistBoxName);
  await Hive.openBox(themeStateBoxName);
  // final recipesRepo = RecipesRepository();
  // final recipeId = 664058;
  // final recipeInfo = await recipesRepo.getRecipeInfo(recipeId: recipeId);
  // log(recipeInfo.toString());

  // final equipment = await recipesRepo.getRecipeEquipments(recipeId: recipeId);
  // log(equipment.toString());

  // final similarRecipes = await recipesRepo.getSimilarRecipes(
  //   recipeId: recipeId,
  // );
  // log(similarRecipes.toString());

  // final nutritionalFacts = await recipesRepo.getNutritionalFacts(
  //   recipeId: recipeId,
  // );
  // log(nutritionalFacts.toString());

  // final allRecipeInfo = await recipesRepo.getCompleteRecipeInfo(
  //   recipeId: recipeId,
  // );
  // log(allRecipeInfo.toString());

  // final randRecipes = await recipesRepo.getRandomRecipes(
  //   diets: [
  //     BasicInfoModel(
  //       name: Diet.vegetarian.name,
  //       image: 'assets/images/diet/vegetarian.png',
  //     ),
  //   ],
  // );
  // final searchedRecipes = await recipesRepo.searchRecipes(
  //   filters: ComplexSearchFilterModel(cuisine: 'italian'),
  //   query: 'Italian Pizza',
  // );
  // log(searchedRecipes.toString());
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final themeState = ref.watch(themeStateControllerProvider);
    final appThemes = AppThemes(themeState);
    final theme = themeState.themeMode == ThemeMode.dark
        ? appThemes.darkTheme
        : appThemes.lightTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: themeData.myTheme,
      theme: theme,
      title: 'Spoonacular Cooking Guide',
      // home: CategorizedReicpesGridScreen(),
      home: ScreensWithBottomNav(),
      // home: RecipeDetailsScreen(recipeId: 716300),
      // home: SearchScreen(),
      // home: ComplexSearchFilterScreen(),
    );
  }
}
