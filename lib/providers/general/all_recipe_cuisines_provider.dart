import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/enums.dart';
import '../../models/basic_info_model.dart';

final allRecipeCuisinesProvider = Provider(
  (ref) => [
    BasicInfoModel(
      name: Cuisine.african.name,
      image: 'https://img.spoonacular.com/recipes/653275-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.asian.name,
      image: 'https://img.spoonacular.com/recipes/716426-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.american.name,
      image: 'https://img.spoonacular.com/recipes/1132339-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.british.name,
      image: 'https://img.spoonacular.com/recipes/664680-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.cajun.name,
      image: 'https://img.spoonacular.com/recipes/782601-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.caribbean.name,
      image: 'https://img.spoonacular.com/recipes/663822-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.chinese.name,
      image: 'https://img.spoonacular.com/recipes/716426-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.easternEuropean.name,
      image: 'https://img.spoonacular.com/recipes/1095836-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.european.name,
      image: 'https://img.spoonacular.com/recipes/716408-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.french.name,
      image: 'https://img.spoonacular.com/recipes/633754-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.german.name,
      image: 'https://img.spoonacular.com/recipes/1096208-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.greek.name,
      image: 'https://img.spoonacular.com/recipes/639606-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.indian.name,
      image: 'https://img.spoonacular.com/recipes/798400-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.irish.name,
      image: 'https://img.spoonacular.com/recipes/646034-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.italian.name,
      image: 'https://img.spoonacular.com/recipes/715769-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.japanese.name,
      image: 'https://img.spoonacular.com/recipes/652078-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.jewish.name,
      image: 'https://img.spoonacular.com/recipes/658125-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.korean.name,
      image: 'https://img.spoonacular.com/recipes/637440-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.latinAmerican.name,
      image: 'https://img.spoonacular.com/recipes/638626-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.mediterranean.name,
      image: 'https://img.spoonacular.com/recipes/715769-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.mexican.name,
      image: 'https://img.spoonacular.com/recipes/640062-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.middleEastern.name,
      image: 'https://img.spoonacular.com/recipes/642121-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.nordic.name,
      image: 'https://img.spoonacular.com/recipes/1095945-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.southern.name,
      image: 'https://img.spoonacular.com/recipes/655219-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.spanish.name,
      image: 'https://img.spoonacular.com/recipes/1095806-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.thai.name,
      image: 'https://img.spoonacular.com/recipes/663126-312x231.jpg',
      imgSource: ImageSource.network,
    ),
    BasicInfoModel(
      name: Cuisine.vietnamese.name,
      image: 'https://img.spoonacular.com/recipes/716217-312x231.jpg',
      imgSource: ImageSource.network,
    ),
  ],
);
