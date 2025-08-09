import 'dart:convert';

import 'package:app/models/recipe_search_result_model.dart';
import 'package:app/models/spoonacular_result_model.dart';

final recipesWithComplexFiltersJson = '''
  [
  {
    "id": 638568,
    "image": "chili-pie-with-green-chile-and-cheddar-cornbread-crust-638568.jpg",
    "imageType": "jpg",
    "title": "Chili Pie with Green Chile and Cheddar Cornbread Crust",
    "readyInMinutes": 60,
    "servings": 8,
    "sourceUrl": "http://www.foodista.com/recipe/R526VXXY/chili-pie-w-green-chile-cheddar-cornbread-crust"
  },
  {
    "id": 715467,
    "image": "turkey-pot-pie-715467.jpg",
    "imageType": "jpg",
    "title": "Turkey Pot Pie",
    "readyInMinutes": 45,
    "servings": 8,
    "sourceUrl": "https://www.pinkwhen.com/turkey-pot-pie-recipe/"
  },
  {
    "id": 634660,
    "image": null,
    "imageType": "jpg",
    "title": "Beef Pot Pies with Irish Cheddar Crust",
    "readyInMinutes": 45,
    "servings": 6,
    "sourceUrl": "https://www.foodista.com/recipe/6FMXSM3N/beef-pot-pies-with-irish-cheddar-crust"
  },
  {
    "id": 157278,
    "image": "pumpkin-chiffon-pie-with-a-double-chocolate-crust-157278.jpg",
    "imageType": "jpg",
    "title": "Pumpkin Chiffon Pie with a Double-Chocolate Crust",
    "readyInMinutes": 120,
    "servings": 12,
    "sourceUrl": "http://spoonacular.com/-1383560382720"
  },
  {
    "id": 632525,
    "image": "Apple-Custard-Pie-With-Oatmeal-Crust-632525.jpg",
    "imageType": "jpg",
    "title": "Apple Custard Pie With Oatmeal Crust",
    "readyInMinutes": 45,
    "servings": 10,
    "sourceUrl": "https://www.foodista.com/recipe/RDPWKNZP/apple-custard-pie-with-oatmeal-crust"
  },
  {
    "id": 635513,
    "image": "Blueberry-Pie-With-Sweet-Almond-Crust-635513.jpg",
    "imageType": "jpg",
    "title": "Blueberry Pie With Sweet Almond Crust",
    "readyInMinutes": 45,
    "servings": 10,
    "sourceUrl": "https://www.foodista.com/recipe/4N7SFTK5/blueberry-pie-with-sweet-almond-crust"
  },
  {
    "id": 637794,
    "image": "Cherry-Berry-Pie-With-Agave-Nectar-All-Butter-Crust-637794.jpg",
    "imageType": "jpg",
    "title": "Cherry-Berry Pie With Agave Nectar All-Butter Crust",
    "readyInMinutes": 180,
    "servings": 10,
    "sourceUrl": "https://www.foodista.com/recipe/KPLBL8TL/cherry-berry-pie-with-agave-nectar-all-butter-crust"
  },
  {
    "id": 655740,
    "image": "Perfect-Pie-Crust-In-A-Classic-Apple-Pie-655740.jpg",
    "imageType": "jpg",
    "title": "Classic Apple Pie with Perfect Crust",
    "readyInMinutes": 45,
    "servings": 6,
    "sourceUrl": "https://www.foodista.com/recipe/K5L2WH5R/perfect-pie-crust-in-a-classic-apple-pie"
  },
  {
    "id": 640862,
    "image": "Crock-Pot-Chicken-Pot-Pie-640862.jpg",
    "imageType": "jpg",
    "title": "Crock Pot Chicken Pot Pie",
    "readyInMinutes": 45,
    "servings": 20,
    "sourceUrl": "https://www.foodista.com/recipe/LHJZJG8D/crock-pot-chicken-pot-pie"
  }
]
''';

final _recipes = (json.decode(recipesWithComplexFiltersJson) as List)
    .map((r) => RecipeSearchResultModel.fromMap(r))
    .toList();

final recipesWithComplexFilters = SpoonacularResultModel(
  results: _recipes,
  offset: 0,
  number: 10,
  totalResults: 10,
);
