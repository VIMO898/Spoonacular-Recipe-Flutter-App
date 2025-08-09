import 'dart:convert';

import 'package:app/models/equipment_model.dart';

final _recipeEquipmentJson = '''
{
  "equipment": [
    {
      "name": "baking pan",
      "image": "roasting-pan.jpg"
    },
    {
      "name": "oven",
      "image": "oven.jpg"
    },
    {
      "name": "whisk",
      "image": "whisk.png"
    },
    {
      "name": "bowl",
      "image": "bowl.jpg"
    }
  ]
}
''';

final recipeEquipment = (json.decode(_recipeEquipmentJson)['equipment'] as List)
    .map((e) => EquipmentModel.fromMap(e))
    .toList();
