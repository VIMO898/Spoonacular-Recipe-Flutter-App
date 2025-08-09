import 'package:app/models/nutrition_model.dart';

final _nutritionalFactsJson = '''
{
  "calories": "962",
  "carbs": "35g",
  "fat": "71g",
  "protein": "43g",
  "bad": [
    {
      "amount": "962",
      "indented": false,
      "title": "Calories",
      "percentOfDailyNeeds": 48.13
    },
    {
      "amount": "71g",
      "indented": false,
      "title": "Fat",
      "percentOfDailyNeeds": 109.72
    },
    {
      "amount": "28g",
      "indented": true,
      "title": "Saturated Fat",
      "percentOfDailyNeeds": 176.59
    },
    {
      "amount": "35g",
      "indented": false,
      "title": "Carbohydrates",
      "percentOfDailyNeeds": 11.68
    },
    {
      "amount": "3g",
      "indented": true,
      "title": "Sugar",
      "percentOfDailyNeeds": 4.29
    },
    {
      "amount": "170mg",
      "indented": false,
      "title": "Cholesterol",
      "percentOfDailyNeeds": 56.96
    },
    {
      "amount": "1437mg",
      "indented": false,
      "title": "Sodium",
      "percentOfDailyNeeds": 62.51
    },
    {
      "amount": "0.0g",
      "indented": false,
      "title": "Alcohol",
      "percentOfDailyNeeds": 100
    }
  ],
  "good": [
    {
      "amount": "43g",
      "indented": false,
      "title": "Protein",
      "percentOfDailyNeeds": 87.2
    },
    {
      "amount": "3µg",
      "indented": false,
      "title": "Vitamin B12",
      "percentOfDailyNeeds": 64.769996
    },
    {
      "amount": "33µg",
      "indented": false,
      "title": "Selenium",
      "percentOfDailyNeeds": 48.14
    },
    {
      "amount": "6mg",
      "indented": false,
      "title": "Zinc",
      "percentOfDailyNeeds": 45.94
    },
    {
      "amount": "443mg",
      "indented": false,
      "title": "Phosphorus",
      "percentOfDailyNeeds": 44.31
    },
    {
      "amount": "405mg",
      "indented": false,
      "title": "Calcium",
      "percentOfDailyNeeds": 40.56
    },
    {
      "amount": "1851IU",
      "indented": false,
      "title": "Vitamin A",
      "percentOfDailyNeeds": 37.04
    },
    {
      "amount": "6mg",
      "indented": false,
      "title": "Vitamin B3",
      "percentOfDailyNeeds": 32.380002
    },
    {
      "amount": "0.52mg",
      "indented": false,
      "title": "Vitamin B6",
      "percentOfDailyNeeds": 25.86
    },
    {
      "amount": "0.38mg",
      "indented": false,
      "title": "Vitamin B2",
      "percentOfDailyNeeds": 22.43
    },
    {
      "amount": "3mg",
      "indented": false,
      "title": "Iron",
      "percentOfDailyNeeds": 17.74
    },
    {
      "amount": "538mg",
      "indented": false,
      "title": "Potassium",
      "percentOfDailyNeeds": 15.39
    },
    {
      "amount": "16µg",
      "indented": false,
      "title": "Vitamin K",
      "percentOfDailyNeeds": 15.37
    },
    {
      "amount": "44mg",
      "indented": false,
      "title": "Magnesium",
      "percentOfDailyNeeds": 11.16
    },
    {
      "amount": "0.17mg",
      "indented": false,
      "title": "Vitamin B1",
      "percentOfDailyNeeds": 11.07
    },
    {
      "amount": "0.92mg",
      "indented": false,
      "title": "Vitamin B5",
      "percentOfDailyNeeds": 9.17
    },
    {
      "amount": "2g",
      "indented": false,
      "title": "Fiber",
      "percentOfDailyNeeds": 8.51
    },
    {
      "amount": "1mg",
      "indented": false,
      "title": "Vitamin E",
      "percentOfDailyNeeds": 8
    },
    {
      "amount": "28µg",
      "indented": false,
      "title": "Folate",
      "percentOfDailyNeeds": 7.18
    },
    {
      "amount": "0.13mg",
      "indented": false,
      "title": "Copper",
      "percentOfDailyNeeds": 6.27
    },
    {
      "amount": "5mg",
      "indented": false,
      "title": "Vitamin C",
      "percentOfDailyNeeds": 6.2
    },
    {
      "amount": "0.12mg",
      "indented": false,
      "title": "Manganese",
      "percentOfDailyNeeds": 5.86
    },
    {
      "amount": "0.48µg",
      "indented": false,
      "title": "Vitamin D",
      "percentOfDailyNeeds": 3.18
    }
  ],
  "nutrients": [
    {
      "name": "Calories",
      "amount": 962.62,
      "unit": "kcal",
      "percentOfDailyNeeds": 48.13
    },
    {
      "name": "Fat",
      "amount": 71.32,
      "unit": "g",
      "percentOfDailyNeeds": 109.72
    },
    {
      "name": "Saturated Fat",
      "amount": 28.25,
      "unit": "g",
      "percentOfDailyNeeds": 176.59
    },
    {
      "name": "Carbohydrates",
      "amount": 35.03,
      "unit": "g",
      "percentOfDailyNeeds": 11.68
    },
    {
      "name": "Net Carbohydrates",
      "amount": 32.9,
      "unit": "g",
      "percentOfDailyNeeds": 11.96
    },
    {
      "name": "Sugar",
      "amount": 3.86,
      "unit": "g",
      "percentOfDailyNeeds": 4.29
    },
    {
      "name": "Cholesterol",
      "amount": 170.88,
      "unit": "mg",
      "percentOfDailyNeeds": 56.96
    },
    {
      "name": "Sodium",
      "amount": 1437.77,
      "unit": "mg",
      "percentOfDailyNeeds": 62.51
    },
    {
      "name": "Alcohol",
      "amount": 0,
      "unit": "g",
      "percentOfDailyNeeds": 100
    },
    {
      "name": "Alcohol %",
      "amount": 0,
      "unit": "%",
      "percentOfDailyNeeds": 100
    },
    {
      "name": "Protein",
      "amount": 43.6,
      "unit": "g",
      "percentOfDailyNeeds": 87.2
    },
    {
      "name": "Vitamin B12",
      "amount": 3.89,
      "unit": "µg",
      "percentOfDailyNeeds": 64.769996
    },
    {
      "name": "Selenium",
      "amount": 33.7,
      "unit": "µg",
      "percentOfDailyNeeds": 48.14
    },
    {
      "name": "Zinc",
      "amount": 6.89,
      "unit": "mg",
      "percentOfDailyNeeds": 45.94
    },
    {
      "name": "Phosphorus",
      "amount": 443.08,
      "unit": "mg",
      "percentOfDailyNeeds": 44.31
    },
    {
      "name": "Calcium",
      "amount": 405.64,
      "unit": "mg",
      "percentOfDailyNeeds": 40.56
    },
    {
      "name": "Vitamin A",
      "amount": 1851.92,
      "unit": "IU",
      "percentOfDailyNeeds": 37.04
    },
    {
      "name": "Vitamin B3",
      "amount": 6.48,
      "unit": "mg",
      "percentOfDailyNeeds": 32.380002
    },
    {
      "name": "Vitamin B6",
      "amount": 0.52,
      "unit": "mg",
      "percentOfDailyNeeds": 25.86
    },
    {
      "name": "Vitamin B2",
      "amount": 0.38,
      "unit": "mg",
      "percentOfDailyNeeds": 22.43
    },
    {
      "name": "Iron",
      "amount": 3.19,
      "unit": "mg",
      "percentOfDailyNeeds": 17.74
    },
    {
      "name": "Potassium",
      "amount": 538.7,
      "unit": "mg",
      "percentOfDailyNeeds": 15.39
    },
    {
      "name": "Vitamin K",
      "amount": 16.14,
      "unit": "µg",
      "percentOfDailyNeeds": 15.37
    },
    {
      "name": "Magnesium",
      "amount": 44.64,
      "unit": "mg",
      "percentOfDailyNeeds": 11.16
    },
    {
      "name": "Vitamin B1",
      "amount": 0.17,
      "unit": "mg",
      "percentOfDailyNeeds": 11.07
    },
    {
      "name": "Vitamin B5",
      "amount": 0.92,
      "unit": "mg",
      "percentOfDailyNeeds": 9.17
    },
    {
      "name": "Fiber",
      "amount": 2.13,
      "unit": "g",
      "percentOfDailyNeeds": 8.51
    },
    {
      "name": "Vitamin E",
      "amount": 1.2,
      "unit": "mg",
      "percentOfDailyNeeds": 8
    },
    {
      "name": "Folate",
      "amount": 28.7,
      "unit": "µg",
      "percentOfDailyNeeds": 7.18
    },
    {
      "name": "Copper",
      "amount": 0.13,
      "unit": "mg",
      "percentOfDailyNeeds": 6.27
    },
    {
      "name": "Vitamin C",
      "amount": 5.12,
      "unit": "mg",
      "percentOfDailyNeeds": 6.2
    },
    {
      "name": "Manganese",
      "amount": 0.12,
      "unit": "mg",
      "percentOfDailyNeeds": 5.86
    },
    {
      "name": "Vitamin D",
      "amount": 0.48,
      "unit": "µg",
      "percentOfDailyNeeds": 3.18
    }
  ],
  "properties": [
    {
      "name": "Glycemic Index",
      "amount": 54.75,
      "unit": ""
    },
    {
      "name": "Glycemic Load",
      "amount": 1.24,
      "unit": ""
    },
    {
      "name": "Inflammation Score",
      "amount": -8,
      "unit": ""
    },
    {
      "name": "Nutrition Score",
      "amount": 21.153478,
      "unit": "%"
    }
  ],
  "flavonoids": [
    {
      "name": "Cyanidin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Petunidin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Delphinidin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Malvidin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Pelargonidin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Peonidin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Catechin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Epigallocatechin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Epicatechin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Epicatechin 3-gallate",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Epigallocatechin 3-gallate",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Theaflavin",
      "amount": 0,
      "unit": ""
    },
    {
      "name": "Thearubigins",
      "amount": 0,
      "unit": ""
    },
    {
      "name": "Eriodictyol",
      "amount": 0,
      "unit": ""
    },
    {
      "name": "Hesperetin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Naringenin",
      "amount": 0.05,
      "unit": "mg"
    },
    {
      "name": "Apigenin",
      "amount": 0,
      "unit": "mg"
    },
    {
      "name": "Luteolin",
      "amount": 0.01,
      "unit": "mg"
    },
    {
      "name": "Isorhamnetin",
      "amount": 1.81,
      "unit": "mg"
    },
    {
      "name": "Kaempferol",
      "amount": 3.67,
      "unit": "mg"
    },
    {
      "name": "Myricetin",
      "amount": 0.02,
      "unit": "mg"
    },
    {
      "name": "Quercetin",
      "amount": 6.41,
      "unit": "mg"
    },
    {
      "name": "Theaflavin-3,3'-digallate",
      "amount": 0,
      "unit": ""
    },
    {
      "name": "Theaflavin-3'-gallate",
      "amount": 0,
      "unit": ""
    },
    {
      "name": "Theaflavin-3-gallate",
      "amount": 0,
      "unit": ""
    },
    {
      "name": "Gallocatechin",
      "amount": 0,
      "unit": "mg"
    }
  ],
  "ingredients": [
    {
      "name": "ground beef",
      "amount": 0.25,
      "unit": "pound",
      "id": 10023572,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 19.28,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Fluoride",
          "amount": 25.4,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Sugar",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 288.03,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 20.41,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 22.68,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 19.47,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Trans Fat",
          "amount": 1.4,
          "unit": "g",
          "percentOfDailyNeeds": 17784.948736
        },
        {
          "name": "Vitamin B2",
          "amount": 0.17,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Choline",
          "amount": 63.96,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B1",
          "amount": 0.05,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 4.74,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Lycopene",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B12",
          "amount": 2.43,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 7.94,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 2.04,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 75.98,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0.07,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 306.17,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Folic Acid",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Selenium",
          "amount": 17.01,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 4.79,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 2.2,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0.37,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0.46,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 179.17,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0.11,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 8.7,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 0,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0.57,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 80.51,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 9.93,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 0.59,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    },
    {
      "name": "pancetta",
      "amount": 2,
      "unit": "slices",
      "id": 10410123,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 3.36,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Sugar",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 116.76,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 1.4,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 11.11,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 3.53,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Trans Fat",
          "amount": 0.04,
          "unit": "g",
          "percentOfDailyNeeds": 17784.948736
        },
        {
          "name": "Vitamin B2",
          "amount": 0.02,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Choline",
          "amount": 13.38,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B1",
          "amount": 0.08,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 0.33,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Lycopene",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B12",
          "amount": 0.14,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 0.36,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 185.36,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 0.36,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 55.44,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Folic Acid",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Selenium",
          "amount": 5.63,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 1.13,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 0.11,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0.07,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0.12,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 40.32,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0.11,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 3.72,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 10.36,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0.16,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 18.48,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 4.88,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 1.81,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    },
    {
      "name": "pesto",
      "amount": 0.25,
      "unit": "jar",
      "id": 93698,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Fluoride",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Sugar",
          "amount": 1.36,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 164.48,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 68.43,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 15.73,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 2.04,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Trans Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 17784.948736
        },
        {
          "name": "Vitamin B2",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Vitamin B1",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Vitamin B12",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 2.72,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 397.38,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0.68,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 3.4,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Selenium",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 0.25,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 2.72,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 856.8,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 3.4,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    },
    {
      "name": "mozzarella",
      "amount": 0.25,
      "unit": "large ball",
      "id": 1026,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 11.3,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Sugar",
          "amount": 0.58,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 169.5,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 285.33,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 12.63,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 12.53,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Vitamin B2",
          "amount": 0.16,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Choline",
          "amount": 8.7,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B1",
          "amount": 0.02,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 1.65,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Lycopene",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B12",
          "amount": 1.29,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 3.95,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 1.3,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 1.24,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 354.26,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 1.24,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 42.94,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Folic Acid",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Selenium",
          "amount": 9.6,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0.02,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 0.06,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 0.25,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0.02,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0.11,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 200.01,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0.23,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 7.43,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 381.94,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0.08,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 44.63,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 3.71,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 0.43,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    },
    {
      "name": "onion",
      "amount": 0.25,
      "unit": "",
      "id": 10011282,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 2.75,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Fluoride",
          "amount": 0.3,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Sugar",
          "amount": 1.17,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 11,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 6.32,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 0.03,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 0.3,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Vitamin B2",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Choline",
          "amount": 1.68,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B1",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 0.05,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Lycopene",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B12",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 5.22,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 2.04,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 0.11,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 2.1,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 1.1,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0.47,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 2.57,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 40.15,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Folic Acid",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Selenium",
          "amount": 0.14,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0.04,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 0.03,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 0.06,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0.03,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 7.97,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 0.01,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 0.55,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0.03,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    },
    {
      "name": "butter",
      "amount": 0.75,
      "unit": "tablespoons",
      "id": 1001,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 0.21,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Fluoride",
          "amount": 0.29,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Sugar",
          "amount": 0.01,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 75.29,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 2.52,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 8.52,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 0.09,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Trans Fat",
          "amount": 0.34,
          "unit": "g",
          "percentOfDailyNeeds": 17784.948736
        },
        {
          "name": "Vitamin B2",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Choline",
          "amount": 1.97,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B1",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Lycopene",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B12",
          "amount": 0.02,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 0.31,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 0.74,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 0.01,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 67.51,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 0.01,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 2.52,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Folic Acid",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Selenium",
          "amount": 0.1,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0.24,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 2.52,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 5.4,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 262.39,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 22.58,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 2.2,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 0.32,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    },
    {
      "name": "tomato paste",
      "amount": 0.5,
      "unit": "teaspoons",
      "id": 11887,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 1.26,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Sugar",
          "amount": 0.37,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 2.46,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 1.08,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 0.01,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 0.13,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Vitamin B2",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Choline",
          "amount": 1.15,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B1",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 0.02,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Lycopene",
          "amount": 862.92,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B12",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 0.36,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 0.66,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 0.34,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 0.44,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 23.7,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0.12,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 0.57,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 30.42,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Folic Acid",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Selenium",
          "amount": 0.16,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 0.09,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 0.09,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0.13,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 2.49,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 45.75,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    },
    {
      "name": "anchovy paste",
      "amount": 0.25,
      "unit": "teaspoon",
      "id": 10015002,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 1.03,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Sugar",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 3.15,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 3.48,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 0.15,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 0.43,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Vitamin B2",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Choline",
          "amount": 1.27,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B1",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 0.04,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Lycopene",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B12",
          "amount": 0.01,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 0.19,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 0.18,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 55.05,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 8.16,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Folic Acid",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Selenium",
          "amount": 1.02,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 0.3,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 0.07,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0.05,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 3.78,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0.03,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 0.03,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 0.6,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 1.27,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 0.06,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 0.04,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    },
    {
      "name": "baby arugula",
      "amount": 1,
      "unit": "servings",
      "id": 10011959,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 4.7,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Sugar",
          "amount": 0.2,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 2.5,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 16,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 0.07,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 0.26,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Vitamin B2",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Choline",
          "amount": 1.53,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B1",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 0.05,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Lycopene",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B12",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 9.7,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 1.5,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 10.9,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 0.2,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 2.7,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0.16,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 0.37,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 36.9,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Folic Acid",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Selenium",
          "amount": 0.03,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0.03,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 0.03,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 0.15,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0.04,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 5.2,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 0.01,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 237.3,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0.04,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 0.03,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    },
    {
      "name": "tomato",
      "amount": 0.25,
      "unit": "slices",
      "id": 11529,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 0.74,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Fluoride",
          "amount": 0.16,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Sugar",
          "amount": 0.18,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 1.22,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 0.68,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 0.01,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 0.06,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Vitamin B2",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Choline",
          "amount": 0.45,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B1",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Lycopene",
          "amount": 173.48,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Vitamin B12",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 1.01,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 0.92,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 0.53,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 0.18,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 0.34,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0.08,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 0.26,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 16,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Folic Acid",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Selenium",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 0.04,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 0.02,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0.04,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 1.62,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 56.23,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0.01,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 0.01,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    },
    {
      "name": "ciabatta buns",
      "amount": 1,
      "unit": "",
      "id": 93699,
      "nutrients": [
        {
          "name": "Magnesium",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 11.16
        },
        {
          "name": "Fluoride",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Sugar",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 4.29
        },
        {
          "name": "Calories",
          "amount": 128.24,
          "unit": "kcal",
          "percentOfDailyNeeds": 48.13
        },
        {
          "name": "Calcium",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 40.56
        },
        {
          "name": "Fat",
          "amount": 0.39,
          "unit": "g",
          "percentOfDailyNeeds": 109.72
        },
        {
          "name": "Protein",
          "amount": 4.76,
          "unit": "g",
          "percentOfDailyNeeds": 87.2
        },
        {
          "name": "Trans Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 17784.948736
        },
        {
          "name": "Vitamin B2",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 22.43
        },
        {
          "name": "Vitamin B1",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 11.07
        },
        {
          "name": "Zinc",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 45.94
        },
        {
          "name": "Vitamin B12",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 64.769996
        },
        {
          "name": "Folate",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 7.18
        },
        {
          "name": "Vitamin C",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.2
        },
        {
          "name": "Vitamin K",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 15.37
        },
        {
          "name": "Net Carbohydrates",
          "amount": 25.65,
          "unit": "g",
          "percentOfDailyNeeds": 11.96
        },
        {
          "name": "Sodium",
          "amount": 274.4,
          "unit": "mg",
          "percentOfDailyNeeds": 62.51
        },
        {
          "name": "Fiber",
          "amount": 0.62,
          "unit": "g",
          "percentOfDailyNeeds": 8.51
        },
        {
          "name": "Carbohydrates",
          "amount": 26.26,
          "unit": "g",
          "percentOfDailyNeeds": 11.68
        },
        {
          "name": "Caffeine",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Copper",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 6.27
        },
        {
          "name": "Potassium",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 15.39
        },
        {
          "name": "Selenium",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 48.14
        },
        {
          "name": "Alcohol",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 100
        },
        {
          "name": "Manganese",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 5.86
        },
        {
          "name": "Vitamin B3",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 32.380002
        },
        {
          "name": "Iron",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 17.74
        },
        {
          "name": "Vitamin B6",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 25.86
        },
        {
          "name": "Vitamin E",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 8
        },
        {
          "name": "Phosphorus",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 44.31
        },
        {
          "name": "Vitamin D",
          "amount": 0,
          "unit": "µg",
          "percentOfDailyNeeds": 3.18
        },
        {
          "name": "Saturated Fat",
          "amount": 0.22,
          "unit": "g",
          "percentOfDailyNeeds": 176.59
        },
        {
          "name": "Vitamin A",
          "amount": 0,
          "unit": "IU",
          "percentOfDailyNeeds": 37.04
        },
        {
          "name": "Vitamin B5",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 9.17
        },
        {
          "name": "Cholesterol",
          "amount": 0,
          "unit": "mg",
          "percentOfDailyNeeds": 56.96
        },
        {
          "name": "Mono Unsaturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 0
        },
        {
          "name": "Poly Unsaturated Fat",
          "amount": 0,
          "unit": "g",
          "percentOfDailyNeeds": 0
        }
      ]
    }
  ],
  "caloricBreakdown": {
    "percentFat": 67.11,
    "percentCarbs": 14.65,
    "percentProtein": 18.24
  },
  "weightPerServing": {
    "amount": 356,
    "unit": "g"
  },
  "expires": 1751572033663,
  "stale": false
}
''';

final nutritionalFacts = NutritionModel.fromJson(_nutritionalFactsJson);
