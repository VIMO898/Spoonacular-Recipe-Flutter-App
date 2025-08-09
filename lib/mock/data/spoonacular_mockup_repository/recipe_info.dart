import 'package:app/models/recipe_info_model.dart';

final _recipeInfoJson = '''
{
  "id": 664058,
  "image": "https://img.spoonacular.com/recipes/664058-556x370.jpg",
  "imageType": "jpg",
  "title": "Turkey Pot Pie With Cornbread Crust",
  "readyInMinutes": 45,
  "servings": 5,
  "sourceUrl": "https://www.foodista.com/recipe/VGRSLJDJ/turkey-pot-pie-with-cornbread-crust",
  "vegetarian": false,
  "vegan": false,
  "glutenFree": true,
  "dairyFree": false,
  "veryHealthy": true,
  "cheap": true,
  "veryPopular": true,
  "sustainable": true,
  "lowFodmap": false,
  "weightWatcherSmartPoints": 13,
  "gaps": "no",
  "preparationMinutes": null,
  "cookingMinutes": null,
  "aggregateLikes": 2,
  "healthScore": 23.0,
  "creditsText": "foodista.com",
  "license": null,
  "sourceName": "foodista.com",
  "pricePerServing": 117.01,
  "extendedIngredients": [
    {
      "id": 18369,
      "aisle": "Baking",
      "image": "white-powder.jpg",
      "consistency": "SOLID",
      "name": "baking powder",
      "nameClean": "baking powder",
      "original": "1 tablespoon baking powder",
      "originalName": "baking powder",
      "amount": 1.0,
      "unit": "tablespoon",
      "meta": [],
      "measures": {
        "us": {
          "amount": 1.0,
          "unitShort": "Tbsp",
          "unitLong": "Tbsp"
        },
        "metric": {
          "amount": 1.0,
          "unitShort": "Tbsp",
          "unitLong": "Tbsp"
        }
      }
    },
    {
      "id": 1014582,
      "aisle": "Oil, Vinegar, Salad Dressing",
      "image": "vegetable-oil.jpg",
      "consistency": "LIQUID",
      "name": "canola oil",
      "nameClean": "canola oil",
      "original": "2 tablespoons canola oil",
      "originalName": "canola oil",
      "amount": 2.0,
      "unit": "tablespoons",
      "meta": [],
      "measures": {
        "us": {
          "amount": 2.0,
          "unitShort": "Tbsps",
          "unitLong": "Tbsps"
        },
        "metric": {
          "amount": 2.0,
          "unitShort": "Tbsps",
          "unitLong": "Tbsps"
        }
      }
    },
    {
      "id": 11124,
      "aisle": "Produce",
      "image": "sliced-carrot.png",
      "consistency": "SOLID",
      "name": "carrots",
      "nameClean": "carrots",
      "original": "2 large carrots, chopped",
      "originalName": "carrots, chopped",
      "amount": 2.0,
      "unit": "large",
      "meta": [
        "chopped"
      ],
      "measures": {
        "us": {
          "amount": 2.0,
          "unitShort": "large",
          "unitLong": "larges"
        },
        "metric": {
          "amount": 2.0,
          "unitShort": "large",
          "unitLong": "larges"
        }
      }
    },
    {
      "id": 11143,
      "aisle": "Produce",
      "image": "celery.jpg",
      "consistency": "SOLID",
      "name": "celery",
      "nameClean": "celery",
      "original": "3 stalks celery, chopped",
      "originalName": "celery, chopped",
      "amount": 3.0,
      "unit": "stalks",
      "meta": [
        "chopped"
      ],
      "measures": {
        "us": {
          "amount": 3.0,
          "unitShort": "stalks",
          "unitLong": "stalks"
        },
        "metric": {
          "amount": 3.0,
          "unitShort": "stalks",
          "unitLong": "stalks"
        }
      }
    },
    {
      "id": 6172,
      "aisle": "Canned and Jarred",
      "image": "chicken-broth.png",
      "consistency": "LIQUID",
      "name": "chicken stock",
      "nameClean": "chicken stock",
      "original": "2 cups turkey or chicken stock",
      "originalName": "turkey or chicken stock",
      "amount": 2.0,
      "unit": "cups",
      "meta": [],
      "measures": {
        "us": {
          "amount": 2.0,
          "unitShort": "cups",
          "unitLong": "cups"
        },
        "metric": {
          "amount": 480.0,
          "unitShort": "ml",
          "unitLong": "milliliters"
        }
      }
    },
    {
      "id": 1123,
      "aisle": "Milk, Eggs, Other Dairy",
      "image": "egg.png",
      "consistency": "SOLID",
      "name": "egg",
      "nameClean": "egg",
      "original": "1 large egg",
      "originalName": "egg",
      "amount": 1.0,
      "unit": "large",
      "meta": [],
      "measures": {
        "us": {
          "amount": 1.0,
          "unitShort": "large",
          "unitLong": "large"
        },
        "metric": {
          "amount": 1.0,
          "unitShort": "large",
          "unitLong": "large"
        }
      }
    },
    {
      "id": 20081,
      "aisle": "Baking",
      "image": "flour.png",
      "consistency": "SOLID",
      "name": "flour",
      "nameClean": "flour",
      "original": "1/4 cup flour",
      "originalName": "flour",
      "amount": 0.25,
      "unit": "cup",
      "meta": [],
      "measures": {
        "us": {
          "amount": 0.25,
          "unitShort": "cups",
          "unitLong": "cups"
        },
        "metric": {
          "amount": 31.25,
          "unitShort": "g",
          "unitLong": "grams"
        }
      }
    },
    {
      "id": 20081,
      "aisle": "Baking",
      "image": "flour.png",
      "consistency": "SOLID",
      "name": "flour",
      "nameClean": "flour",
      "original": "3/4 cup flour",
      "originalName": "flour",
      "amount": 0.75,
      "unit": "cup",
      "meta": [],
      "measures": {
        "us": {
          "amount": 0.75,
          "unitShort": "cups",
          "unitLong": "cups"
        },
        "metric": {
          "amount": 93.75,
          "unitShort": "g",
          "unitLong": "grams"
        }
      }
    },
    {
      "id": 11215,
      "aisle": "Produce",
      "image": "garlic.png",
      "consistency": "SOLID",
      "name": "garlic",
      "nameClean": "garlic",
      "original": "2 cloves garlic, minced",
      "originalName": "garlic, minced",
      "amount": 2.0,
      "unit": "cloves",
      "meta": [
        "minced"
      ],
      "measures": {
        "us": {
          "amount": 2.0,
          "unitShort": "cloves",
          "unitLong": "cloves"
        },
        "metric": {
          "amount": 2.0,
          "unitShort": "cloves",
          "unitLong": "cloves"
        }
      }
    },
    {
      "id": 11052,
      "aisle": "Produce",
      "image": "green-beans-or-string-beans.jpg",
      "consistency": "SOLID",
      "name": "green beans",
      "nameClean": "green beans",
      "original": "1/2 cup green beans, trimmed and chopped",
      "originalName": "green beans, trimmed and chopped",
      "amount": 0.5,
      "unit": "cup",
      "meta": [
        "trimmed",
        "chopped"
      ],
      "measures": {
        "us": {
          "amount": 0.5,
          "unitShort": "cups",
          "unitLong": "cups"
        },
        "metric": {
          "amount": 55.0,
          "unitShort": "g",
          "unitLong": "grams"
        }
      }
    },
    {
      "id": 1012038,
      "aisle": "Spices and Seasonings",
      "image": "dried-sage.png",
      "consistency": "SOLID",
      "name": "ground sage",
      "nameClean": "ground sage",
      "original": "2 teaspoons ground sage",
      "originalName": "ground sage",
      "amount": 2.0,
      "unit": "teaspoons",
      "meta": [],
      "measures": {
        "us": {
          "amount": 2.0,
          "unitShort": "tsps",
          "unitLong": "teaspoons"
        },
        "metric": {
          "amount": 2.0,
          "unitShort": "tsps",
          "unitLong": "teaspoons"
        }
      }
    },
    {
      "id": 1032042,
      "aisle": "Spices and Seasonings",
      "image": "thyme.jpg",
      "consistency": "SOLID",
      "name": "ground thyme",
      "nameClean": "ground thyme",
      "original": "2 teaspoons ground thyme",
      "originalName": "ground thyme",
      "amount": 2.0,
      "unit": "teaspoons",
      "meta": [],
      "measures": {
        "us": {
          "amount": 2.0,
          "unitShort": "tsps",
          "unitLong": "teaspoons"
        },
        "metric": {
          "amount": 2.0,
          "unitShort": "tsps",
          "unitLong": "teaspoons"
        }
      }
    },
    {
      "id": 1077,
      "aisle": "Milk, Eggs, Other Dairy",
      "image": "milk.png",
      "consistency": "LIQUID",
      "name": "milk",
      "nameClean": "milk",
      "original": "3/4 cup milk",
      "originalName": "milk",
      "amount": 0.75,
      "unit": "cup",
      "meta": [],
      "measures": {
        "us": {
          "amount": 0.75,
          "unitShort": "cups",
          "unitLong": "cups"
        },
        "metric": {
          "amount": 183.0,
          "unitShort": "ml",
          "unitLong": "milliliters"
        }
      }
    },
    {
      "id": 4053,
      "aisle": "Oil, Vinegar, Salad Dressing",
      "image": "olive-oil.jpg",
      "consistency": "LIQUID",
      "name": "olive oil",
      "nameClean": "olive oil",
      "original": "2 tablespoons olive oil",
      "originalName": "olive oil",
      "amount": 2.0,
      "unit": "tablespoons",
      "meta": [],
      "measures": {
        "us": {
          "amount": 2.0,
          "unitShort": "Tbsps",
          "unitLong": "Tbsps"
        },
        "metric": {
          "amount": 2.0,
          "unitShort": "Tbsps",
          "unitLong": "Tbsps"
        }
      }
    },
    {
      "id": 11282,
      "aisle": "Produce",
      "image": "brown-onion.png",
      "consistency": "SOLID",
      "name": "onion",
      "nameClean": "onion",
      "original": "1 medium onion, chopped",
      "originalName": "onion, chopped",
      "amount": 1.0,
      "unit": "medium",
      "meta": [
        "chopped"
      ],
      "measures": {
        "us": {
          "amount": 1.0,
          "unitShort": "medium",
          "unitLong": "medium"
        },
        "metric": {
          "amount": 1.0,
          "unitShort": "medium",
          "unitLong": "medium"
        }
      }
    },
    {
      "id": 1002030,
      "aisle": "Spices and Seasonings",
      "image": "pepper.jpg",
      "consistency": "SOLID",
      "name": "cracked pepper",
      "nameClean": "cracked pepper",
      "original": "Cracked pepper",
      "originalName": "Cracked pepper",
      "amount": 5.0,
      "unit": "servings",
      "meta": [],
      "measures": {
        "us": {
          "amount": 5.0,
          "unitShort": "servings",
          "unitLong": "servings"
        },
        "metric": {
          "amount": 5.0,
          "unitShort": "servings",
          "unitLong": "servings"
        }
      }
    },
    {
      "id": 2047,
      "aisle": "Spices and Seasonings",
      "image": "salt.jpg",
      "consistency": "SOLID",
      "name": "salt",
      "nameClean": "salt",
      "original": "1/2 teaspoon salt",
      "originalName": "salt",
      "amount": 0.5,
      "unit": "teaspoon",
      "meta": [],
      "measures": {
        "us": {
          "amount": 0.5,
          "unitShort": "tsps",
          "unitLong": "teaspoons"
        },
        "metric": {
          "amount": 0.5,
          "unitShort": "tsps",
          "unitLong": "teaspoons"
        }
      }
    },
    {
      "id": 19335,
      "aisle": "Baking",
      "image": "sugar-in-bowl.png",
      "consistency": "SOLID",
      "name": "sugar",
      "nameClean": "sugar",
      "original": "1 1/2 tablespoons sugar",
      "originalName": "sugar",
      "amount": 1.5,
      "unit": "tablespoons",
      "meta": [],
      "measures": {
        "us": {
          "amount": 1.5,
          "unitShort": "Tbsps",
          "unitLong": "Tbsps"
        },
        "metric": {
          "amount": 1.5,
          "unitShort": "Tbsps",
          "unitLong": "Tbsps"
        }
      }
    },
    {
      "id": 5165,
      "aisle": "Meat",
      "image": "turkey-raw-whole.jpg",
      "consistency": "SOLID",
      "name": "turkey",
      "nameClean": "turkey",
      "original": "3 cups chopped, cooked turkey",
      "originalName": "chopped, cooked turkey",
      "amount": 3.0,
      "unit": "cups",
      "meta": [
        "cooked",
        "chopped"
      ],
      "measures": {
        "us": {
          "amount": 3.0,
          "unitShort": "cups",
          "unitLong": "cups"
        },
        "metric": {
          "amount": 298.2,
          "unitShort": "g",
          "unitLong": "grams"
        }
      }
    },
    {
      "id": 35137,
      "aisle": "Baking",
      "image": "cornmeal.png",
      "consistency": "SOLID",
      "name": "cornmeal",
      "nameClean": "cornmeal",
      "original": "3/4 cup white or yellow cornmeal",
      "originalName": "white or yellow cornmeal",
      "amount": 0.75,
      "unit": "cup",
      "meta": [
        "white",
        "yellow"
      ],
      "measures": {
        "us": {
          "amount": 0.75,
          "unitShort": "cups",
          "unitLong": "cups"
        },
        "metric": {
          "amount": 119.25,
          "unitShort": "g",
          "unitLong": "grams"
        }
      }
    }
  ],
  "summary": "Forget going out to eat or ordering takeout every time you crave Southern food. Try making Turkey Pot Pie With Cornbread Crust at home. This recipe serves 5. This main course has <b>482 calories</b>, <b>24g of protein</b>, and <b>20g of fat</b> per serving. For <b>\$1.17 per serving</b>, this recipe <b>covers 25%</b> of your daily requirements of vitamins and minerals. 2 people found this recipe to be scrumptious and satisfying. This recipe from Foodista requires chicken stock, olive oil, flour, and milk. From preparation to the plate, this recipe takes around <b>45 minutes</b>. With a spoonacular <b>score of 71%</b>, this dish is solid. Similar recipes are <a href='https://spoonacular.com/recipes/ham-and-greens-pot-pie-with-cornbread-crust-13252'>Ham-and-Greens Pot Pie with Cornbread Crust</a>, <a href='https://spoonacular.com/recipes/curry-turkey-pot-pie-with-homemade-butter-pie-crust-620697'>Curry Turkey Pot Pie With Homemade Butter Pie Crust</a>, and <a href='https://spoonacular.com/recipes/stuffing-crust-turkey-pot-pie-384018'>Stuffing Crust Turkey Pot Pie</a>.",
  "cuisines": [
    "Southern"
  ],
  "dishTypes": [
    "lunch",
    "main course",
    "main dish",
    "dinner"
  ],
  "diets": [],
  "occasions": [],
  "instructions": "<ol><li>To make filling: Preheat the oven to 400F. Coat a pie plate (or any baking dish you like) generously with nonstick cooking spray. Heat olive oil in a large pan over medium heat. Add onion, carrots, celery, and green beans, and saut for about 10 minutes, until tender. Add garlic and stir constantly for 30 seconds. Sprinkle the flour into the pan and stir until it coats the vegetables, about 30 seconds. Slowly stir in 2 cups of h</li><li>To make crust: In a large bowl, whisk the cornmeal, flour, baking powder, sugar and salt. Stir milk, egg and canola oil until well combined in a separate bowl. Stir wet ingredients into dry ingredients. Spoon the batter evenly over the filling. Bake until the top is golden brown, about 22 to 25 minutes. Let cool for at least 15 minutes before serving.</li></ol>",
  "analyzedInstructions": [
    {
      "name": "",
      "steps": [
        {
          "number": 1,
          "step": "To make filling: Preheat the oven to 400F. Coat a pie plate (or any baking dish you like) generously with nonstick cooking spray.",
          "ingredients": [
            {
              "id": 4679,
              "name": "cooking spray",
              "localizedName": "cooking spray",
              "image": "cooking-spray.png"
            }
          ],
          "equipment": [
            {
              "id": 404646,
              "name": "baking pan",
              "localizedName": "baking pan",
              "image": "https://spoonacular.com/cdn/equipment_100x100/roasting-pan.jpg"
            },
            {
              "id": 404784,
              "name": "oven",
              "localizedName": "oven",
              "image": "https://spoonacular.com/cdn/equipment_100x100/oven.jpg",
              "temperature": {
                "number": 400.0,
                "unit": "Fahrenheit"
              }
            }
          ]
        },
        {
          "number": 2,
          "step": "Heat olive oil in a large pan over medium heat.",
          "ingredients": [
            {
              "id": 4053,
              "name": "olive oil",
              "localizedName": "olive oil",
              "image": "olive-oil.jpg"
            }
          ],
          "equipment": [
            {
              "id": 404645,
              "name": "frying pan",
              "localizedName": "frying pan",
              "image": "https://spoonacular.com/cdn/equipment_100x100/pan.png"
            }
          ]
        },
        {
          "number": 3,
          "step": "Add onion, carrots, celery, and green beans, and saut for about 10 minutes, until tender.",
          "ingredients": [
            {
              "id": 11052,
              "name": "green beans",
              "localizedName": "green beans",
              "image": "green-beans-or-string-beans.jpg"
            },
            {
              "id": 11124,
              "name": "carrot",
              "localizedName": "carrot",
              "image": "sliced-carrot.png"
            },
            {
              "id": 11143,
              "name": "celery",
              "localizedName": "celery",
              "image": "celery.jpg"
            },
            {
              "id": 11282,
              "name": "onion",
              "localizedName": "onion",
              "image": "brown-onion.png"
            }
          ],
          "equipment": [],
          "length": {
            "number": 10,
            "unit": "minutes"
          }
        },
        {
          "number": 4,
          "step": "Add garlic and stir constantly for 30 seconds.",
          "ingredients": [
            {
              "id": 11215,
              "name": "garlic",
              "localizedName": "garlic",
              "image": "garlic.png"
            }
          ],
          "equipment": []
        },
        {
          "number": 5,
          "step": "Sprinkle the flour into the pan and stir until it coats the vegetables, about 30 seconds. Slowly stir in 2 cups of hTo make crust: In a large bowl, whisk the cornmeal, flour, baking powder, sugar and salt. Stir milk, egg and canola oil until well combined in a separate bowl. Stir wet ingredients into dry ingredients. Spoon the batter evenly over the filling.",
          "ingredients": [
            {
              "id": 18369,
              "name": "baking powder",
              "localizedName": "baking powder",
              "image": "white-powder.jpg"
            },
            {
              "id": 1014582,
              "name": "canola oil",
              "localizedName": "canola oil",
              "image": "vegetable-oil.jpg"
            },
            {
              "id": 11583,
              "name": "vegetable",
              "localizedName": "vegetable",
              "image": "mixed-vegetables.png"
            },
            {
              "id": 35137,
              "name": "cornmeal",
              "localizedName": "cornmeal",
              "image": "cornmeal.png"
            },
            {
              "id": 0,
              "name": "crust",
              "localizedName": "crust",
              "image": ""
            },
            {
              "id": 20081,
              "name": "all purpose flour",
              "localizedName": "all purpose flour",
              "image": "flour.png"
            },
            {
              "id": 19335,
              "name": "sugar",
              "localizedName": "sugar",
              "image": "sugar-in-bowl.png"
            },
            {
              "id": 1077,
              "name": "milk",
              "localizedName": "milk",
              "image": "milk.png"
            },
            {
              "id": 2047,
              "name": "salt",
              "localizedName": "salt",
              "image": "salt.jpg"
            },
            {
              "id": 1123,
              "name": "egg",
              "localizedName": "egg",
              "image": "egg.png"
            }
          ],
          "equipment": [
            {
              "id": 404661,
              "name": "whisk",
              "localizedName": "whisk",
              "image": "https://spoonacular.com/cdn/equipment_100x100/whisk.png"
            },
            {
              "id": 404783,
              "name": "bowl",
              "localizedName": "bowl",
              "image": "https://spoonacular.com/cdn/equipment_100x100/bowl.jpg"
            },
            {
              "id": 404645,
              "name": "frying pan",
              "localizedName": "frying pan",
              "image": "https://spoonacular.com/cdn/equipment_100x100/pan.png"
            }
          ]
        },
        {
          "number": 6,
          "step": "Bake until the top is golden brown, about 22 to 25 minutes.",
          "ingredients": [],
          "equipment": [
            {
              "id": 404784,
              "name": "oven",
              "localizedName": "oven",
              "image": "https://spoonacular.com/cdn/equipment_100x100/oven.jpg"
            }
          ],
          "length": {
            "number": 22,
            "unit": "minutes"
          }
        },
        {
          "number": 7,
          "step": "Let cool for at least 15 minutes before serving.",
          "ingredients": [],
          "equipment": [],
          "length": {
            "number": 15,
            "unit": "minutes"
          }
        }
      ]
    }
  ],
  "spoonacularScore": 72.82859802246094,
  "spoonacularSourceUrl": "https://spoonacular.com/turkey-pot-pie-with-cornbread-crust-664058"
}
''';

final recipeInfo = RecipeInfoModel.fromJson(_recipeInfoJson);
