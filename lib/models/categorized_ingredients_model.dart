import 'basic_info_model.dart';

class CategorizedIngredientsModel {
  final String name;
  final String img;
  final List<BasicInfoModel> ingredients;
  const CategorizedIngredientsModel({
    required this.name,
    required this.img,
    required this.ingredients,
  });
}
