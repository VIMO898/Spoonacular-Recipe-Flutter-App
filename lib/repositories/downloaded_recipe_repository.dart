import 'package:app/models/complete_recipe_info_model.dart';
import 'package:app/models/equipment_model.dart';
import 'package:app/models/recipe_info_model.dart';
import 'package:app/repositories/image_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../exceptions/custom_exception.dart';
import '../models/basic_info_model.dart';

abstract class BaseDownloadedRecipeRepository {
  List<RecipeInfoModel> getDownloadedRecipeInfo();
  CompleteRecipeInfoModel getCompleteRecipeInfo(int recipeId);
  Future<void> downloadCompleteRecipeInfo(
    CompleteRecipeInfoModel completeRecipeInfo,
  );
  Future<void> deleteDownloadedRecipe(int recipeId);
}

class DownloadedRecipeRepository implements BaseDownloadedRecipeRepository {
  final BaseImageRepository imgRepo;
  final Box box;
  const DownloadedRecipeRepository(this.box, this.imgRepo);

  @override
  CompleteRecipeInfoModel getCompleteRecipeInfo(int recipeId) {
    final jsonEncodedCompleteRecipeInfo = box.get(recipeId);
    final completeRecipeInfo = CompleteRecipeInfoModel.fromJson(
      jsonEncodedCompleteRecipeInfo,
    );
    return completeRecipeInfo;
  }

  @override
  List<RecipeInfoModel> getDownloadedRecipeInfo() {
    final recipeInfoList = box.values
        .map(
          (jsonEncodedRecipeInfo) => CompleteRecipeInfoModel.fromJson(
            jsonEncodedRecipeInfo,
          ).recipeInfo,
        )
        .toList();
    return recipeInfoList;
  }

  @override
  Future<void> deleteDownloadedRecipe(int recipeId) async {
    return box.delete(recipeId);
  }

  @override
  Future<void> downloadCompleteRecipeInfo(
    CompleteRecipeInfoModel completeRecipeInfo,
  ) async {
    try {
      // saving & retrieving saved recipe equipment image names
      final recipeEquipment = completeRecipeInfo.recipeEquipment;
      List<EquipmentModel> recipeEquipmentWithLocalImages = [];
      await Future.wait(
        List.generate(recipeEquipment.length, (index) async {
          final equipment = recipeEquipment[index];
          final networkEquipmentImg =
              'https://img.spoonacular.com/equipment_250x250/${equipment.image}';
          final localEquipmentImg = await imgRepo.saveImageFromUrl(
            networkEquipmentImg,
            equipment.image.split('.').first,
          );
          recipeEquipmentWithLocalImages.add(
            equipment.copyWith(image: localEquipmentImg),
          );
        }),
      );
      // saving & retrieving saved recipe image name
      final recipeInfo = completeRecipeInfo.recipeInfo;
      final recipeId = recipeInfo.id;
      final recipeImg = recipeInfo.image;
      final localRecipeImg = await imgRepo.saveImageFromUrl(
        recipeImg,
        'recipe_$recipeId',
      );
      // saving & retrieving saved ingredient names
      List<BasicInfoModel> recipeIngredientWithLocalImages = [];
      await Future.wait(
        List.generate(recipeInfo.extendedIngredients!.length, (index) async {
          final ingredient = recipeInfo.extendedIngredients![index];
          final ingredientId = ingredient.id;
          final networkIngredientImg =
              'https://img.spoonacular.com/ingredients_250x250/${ingredient.image}';
          final localIngredientImg = await imgRepo.saveImageFromUrl(
            networkIngredientImg,
            'ingredient_$ingredientId',
          );
          recipeIngredientWithLocalImages.add(
            ingredient.copyWith(image: localIngredientImg),
          );
        }),
      );
      // saving updated complete recipe info into Hive box
      final updatedCompleteRecipeInfo = completeRecipeInfo.copyWith(
        recipeInfo: recipeInfo.copyWith(
          image: localRecipeImg,
          extendedIngredients: recipeIngredientWithLocalImages,
        ),
        recipeEquipment: recipeEquipmentWithLocalImages,
      );
      await box.put(recipeId, updatedCompleteRecipeInfo.toJson());
    } catch (e) {
      throw CustomException(
        code: 404,
        message: 'Unable to download this recipe.',
      );
    }
  }
}
