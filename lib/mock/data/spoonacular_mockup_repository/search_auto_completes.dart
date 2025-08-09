import 'dart:convert';

import 'package:app/models/search_autocomplete_model.dart';

final _searchAutoCompletesJson = '''
[
  {
    "id": 1096008,
    "title": "picadillo wraps",
    "imageType": "jpg"
  },
  {
    "id": 1956752,
    "title": "pineapple paloma",
    "imageType": "jpg"
  },
  {
    "id": 656227,
    "title": "pink grapefruit slaw",
    "imageType": "jpg"
  },
  {
    "id": 1095737,
    "title": "pistachio pesto penne",
    "imageType": "jpg"
  },
  {
    "id": 656329,
    "title": "pizza bites with pumpkin",
    "imageType": "jpg"
  },
  {
    "id": 655926,
    "title": "pickled asian ginger salad",
    "imageType": "jpg"
  },
  {
    "id": 656126,
    "title": "pineapple coconut macaroons",
    "imageType": "jpg"
  },
  {
    "id": 656033,
    "title": "pico de gallo (salsa fresca)",
    "imageType": "jpg"
  },
  {
    "id": 715541,
    "title": "pink lemonade crinkle cookies",
    "imageType": "jpg"
  },
  {
    "id": 656280,
    "title": "pistachio and lime financiers",
    "imageType": "jpg"
  },
  {
    "id": 1019172,
    "title": "pineapple cake mix cookie bars",
    "imageType": "jpg"
  },
  {
    "id": 656257,
    "title": "pinto beans, roast peppers & kale soup",
    "imageType": "jpg"
  },
  {
    "id": 656323,
    "title": "pita pizzas with sautéed apples and bacon",
    "imageType": "jpg"
  },
  {
    "id": 1096307,
    "title": "pine nut and cranberry picnic chicken salad",
    "imageType": "jpeg"
  },
  {
    "id": 982383,
    "title": "pineapple sweet potato casserole with candied pecans",
    "imageType": "jpg"
  },
  {
    "id": 656049,
    "title": "pierogies with caramelized onion, cabbage, and potato",
    "imageType": "jpg"
  },
  {
    "id": 1956088,
    "title": "banana cream pi",
    "imageType": "jpg"
  },
  {
    "id": 646071,
    "title": "gyros",
    "imageType": "jpg"
  },
  {
    "id": 656663,
    "title": "pop tart",
    "imageType": "jpg"
  },
  {
    "id": 665438,
    "title": "wuxi ribs",
    "imageType": "jpg"
  },
  {
    "id": 641745,
    "title": "dump cake",
    "imageType": "jpg"
  },
  {
    "id": 652543,
    "title": "muhammara",
    "imageType": "jpg"
  },
  {
    "id": 632797,
    "title": "asian beef",
    "imageType": "jpg"
  },
  {
    "id": 640104,
    "title": "corn salsa",
    "imageType": "jpg"
  },
  {
    "id": 634435,
    "title": "basil pesto",
    "imageType": "jpg"
  }
]
''';

final searchAutoCompletes = (json.decode(_searchAutoCompletesJson) as List)
    .map((s) => SearchAutocompleteModel.fromMap(s))
    .toList();
