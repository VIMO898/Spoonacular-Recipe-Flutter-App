import 'package:app/constants/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/basic_info_model.dart';
import '../../models/categorized_ingredients_model.dart';
import '../../constants/common_ingredient_enum.dart';

final categorizedIngredientsProvider = Provider<List<CategorizedIngredientsModel>>((
  ref,
) {
  final baseImgUrl = 'https://spoonacular.com/cdn/ingredients_100x100';
  return [
    CategorizedIngredientsModel(
      name: IngredientCategory.meatsAndProteins.name,
      img: 'assets/images/categorized_ingredients/meats-and-proteins.png',
      ingredients: [
        BasicInfoModel(
          id: 1055062,
          name: Ingredient.chickenBreast.name,
          image: "$baseImgUrl/chicken-breasts.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 10123,
          name: Ingredient.bacon.name,
          image: "$baseImgUrl/raw-bacon.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 10023572,
          name: Ingredient.beef.name,
          image: "$baseImgUrl/beef-cubes-raw.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 11096,
          name: Ingredient.ham.name,
          image: "$baseImgUrl/ham-whole.jpg",
          imgSource: ImageSource.network,
        ),
      ],
    ),
    CategorizedIngredientsModel(
      name: IngredientCategory.vegetables.name,
      img: 'assets/images/categorized_ingredients/vegetables.png',
      ingredients: [
        BasicInfoModel(
          id: 11282,
          name: Ingredient.onion.name,
          image: "$baseImgUrl/brown-onion.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 11529,
          name: Ingredient.tomato.name,
          image: "$baseImgUrl/tomato.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 10011135,
          name: Ingredient.carrot.name,
          image: "$baseImgUrl/carrots.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 11090,
          name: Ingredient.spinach.name,
          image: "$baseImgUrl/spinach.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 11206,
          name: Ingredient.cucumber.name,
          image: "$baseImgUrl/cucumber.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 10011693,
          name: Ingredient.mushroom.name,
          image: "$baseImgUrl/mushrooms.jpg",
          imgSource: ImageSource.network,
        ),
      ],
    ),
    CategorizedIngredientsModel(
      name: IngredientCategory.dairyAndEggs.name,
      img: 'assets/images/categorized_ingredients/dairy-and-egg.png',
      ingredients: [
        BasicInfoModel(
          id: 1123,
          name: Ingredient.egg.name,
          image: "$baseImgUrl/egg.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 1017,
          name: Ingredient.cheddarCheese.name,
          image: "$baseImgUrl/cheddar-cheese.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 1041009,
          name: Ingredient.parmesanCheese.name,
          image: "$baseImgUrl/parmesan.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 1053,
          name: Ingredient.wholeMilk.name,
          image: "$baseImgUrl/milk.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 93607,
          name: Ingredient.greekYogurt.name,
          image: "$baseImgUrl/plain-yogurt.jpg",
          imgSource: ImageSource.network,
        ),
      ],
    ),
    CategorizedIngredientsModel(
      name: IngredientCategory.spicesAndSeasonings.name,
      img: 'assets/images/categorized_ingredients/spices-and-seasonings.png',
      ingredients: [
        BasicInfoModel(
          id: 1082047,
          name: Ingredient.salt.name,
          image: "$baseImgUrl/salt.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 1102047,
          name: Ingredient.pepper.name,
          image: "$baseImgUrl/pepper.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 1032009,
          name: Ingredient.chiliPowder.name,
          image: "$baseImgUrl/chili-powder.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 2031,
          name: Ingredient.cumin.name,
          image: "$baseImgUrl/ground-cumin.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 2027,
          name: Ingredient.oregano.name,
          image: "$baseImgUrl/oregano.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 2041,
          name: Ingredient.thyme.name,
          image: "$baseImgUrl/thyme.jpg",
          imgSource: ImageSource.network,
        ),
      ],
    ),
    CategorizedIngredientsModel(
      name: IngredientCategory.grainsAndBread.name,
      img: 'assets/images/categorized_ingredients/breads-and-grains.png',
      ingredients: [
        BasicInfoModel(
          id: 10020409,
          name: Ingredient.pennePasta.name,
          image: "$baseImgUrl/penne-pasta.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 10220444,
          name: Ingredient.spaghetti.name,
          image: "$baseImgUrl/spaghetti.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 10018079,
          name: Ingredient.whiteBread.name,
          image: "$baseImgUrl/white-bread.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 18079,
          name: Ingredient.breadCrumbs.name,
          image: "$baseImgUrl/breadcrumbs.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 20081,
          name: Ingredient.flour.name,
          image: "$baseImgUrl/flour.png",
          imgSource: ImageSource.network,
        ),
      ],
    ),
    CategorizedIngredientsModel(
      name: IngredientCategory.nutsAndLegumes.name,
      img: 'assets/images/categorized_ingredients/nuts-and-legumes.png',
      ingredients: [
        BasicInfoModel(
          id: 12135,
          name: Ingredient.almonds.name,
          image: "$baseImgUrl/almonds.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 12142,
          name: Ingredient.walnuts.name,
          image: "$baseImgUrl/walnuts.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 10016069,
          name: Ingredient.chickpeas.name,
          image: "$baseImgUrl/chickpeas.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 16098,
          name: Ingredient.blackBeans.name,
          image: "$baseImgUrl/black-beans.jpg",
          imgSource: ImageSource.network,
        ),
      ],
    ),
    CategorizedIngredientsModel(
      name: IngredientCategory.sweetenersAndCondiments.name,
      img:
          'assets/images/categorized_ingredients/sweeteners-and-condiments.png',
      ingredients: [
        BasicInfoModel(
          id: 19335,
          name: Ingredient.sugar.name,
          image: "$baseImgUrl/sugar-in-bowl.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 19911,
          name: Ingredient.honey.name,
          image: "$baseImgUrl/honey.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 2050,
          name: Ingredient.vanillaExtract.name,
          image: "$baseImgUrl/vanilla-extract.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 19165,
          name: Ingredient.peanutButter.name,
          image: "$baseImgUrl/peanut-butter.png",
          imgSource: ImageSource.network,
        ),
      ],
    ),
    CategorizedIngredientsModel(
      name: IngredientCategory.oilsAndSauces.name,
      img: 'assets/images/categorized_ingredients/oils-and-sauces.png',
      ingredients: [
        BasicInfoModel(
          id: 1089003,
          name: Ingredient.oliveOil.name,
          image: "$baseImgUrl/olive-oil.jpg",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 14106,
          name: Ingredient.vegetableBroth.name,
          image: "$baseImgUrl/chicken-broth.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 93820,
          name: Ingredient.coconutMilk.name,
          image: "$baseImgUrl/coconut-milk.png",
          imgSource: ImageSource.network,
        ),
        BasicInfoModel(
          id: 1001,
          name: Ingredient.butter.name,
          image: "$baseImgUrl/butter-sliced.jpg",
          imgSource: ImageSource.network,
        ),
      ],
    ),
  ];
});
