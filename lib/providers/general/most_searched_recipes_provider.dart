import 'package:app/constants/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/basic_info_model.dart';

final mostSearchedRecipesProvider = Provider(
  (ref) => [
    BasicInfoModel(
      name: MostSearchedRecipe.baking.name,
      image: 'assets/images/most_searched_recipes/baking.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.vegetarian.name,
      image: 'assets/images/most_searched_recipes/vegetarian.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.sauces.name,
      image: 'assets/images/most_searched_recipes/sauces.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.meat.name,
      image: 'assets/images/most_searched_recipes/meat.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.turkey.name,
      image: 'assets/images/most_searched_recipes/turkey.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.chicken.name,
      image: 'assets/images/most_searched_recipes/chicken.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.sausages.name,
      image: 'assets/images/most_searched_recipes/sausages.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.mince.name,
      image: 'assets/images/most_searched_recipes/mince.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.burgers.name,
      image: 'assets/images/most_searched_recipes/burgers.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.pasta.name,
      image: 'assets/images/most_searched_recipes/pasta.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.noodles.name,
      image: 'assets/images/most_searched_recipes/noodles.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.pizza.name,
      image: 'assets/images/most_searched_recipes/pizza.png',
    ),
    BasicInfoModel(
      name: MostSearchedRecipe.soups.name,
      image: 'assets/images/most_searched_recipes/soups.png',
    ),
  ],
);
