import 'package:app/constants/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/basic_info_model.dart';

final allDietProvider = Provider(
  (ref) => [
    BasicInfoModel(
      name: Diet.glutenFree.name,
      image: 'assets/images/diet/gluten-free.png',
    ),
    BasicInfoModel(
      name: Diet.ketogenic.name,
      image: 'assets/images/diet/ketogenic.png',
    ),
    BasicInfoModel(
      name: Diet.vegetarian.name,
      image: 'assets/images/diet/vegetarian.png',
    ),
    BasicInfoModel(
      name: Diet.lactoVegetarian.name,
      image: 'assets/images/diet/lacto-vegetarian.png',
    ),
    BasicInfoModel(
      name: Diet.ovoVegetarian.name,
      image: 'assets/images/diet/ovo-vegetarian.png',
    ),
    BasicInfoModel(
      name: Diet.vegan.name,
      image: 'assets/images/diet/vegan.png',
    ),
    BasicInfoModel(
      name: Diet.pescetarian.name,
      image: 'assets/images/diet/pescetarian.png',
    ),
    BasicInfoModel(
      name: Diet.paleo.name,
      image: 'assets/images/diet/paleo.png',
    ),
    BasicInfoModel(
      name: Diet.primal.name,
      image: 'assets/images/diet/primal.png',
    ),
    BasicInfoModel(
      name: Diet.lowFODMAP.name,
      image: 'assets/images/diet/low-FODMAP.png',
    ),
    BasicInfoModel(
      name: Diet.whole30.name,
      image: 'assets/images/diet/whole-30.png',
    ),
  ],
);
