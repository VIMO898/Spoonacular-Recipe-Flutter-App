import 'package:app/constants/enums.dart';
import 'package:app/models/basic_info_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allIntolerencesProvider = Provider(
  (ref) => [
    BasicInfoModel(
      name: Intolerence.dairy.name,
      image: 'assets/images/intolerences/dairy.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.egg.name,
      image: 'assets/images/intolerences/egg.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.gluten.name,
      image: 'assets/images/intolerences/gluten.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.grain.name,
      image: 'assets/images/intolerences/flax-seeds.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.peanut.name,
      image: 'assets/images/intolerences/peanut.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.seafood.name,
      image: 'assets/images/intolerences/seafood.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.sesame.name,
      image: 'assets/images/intolerences/sesame.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.shellfish.name,
      image: 'assets/images/intolerences/shellfish.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.soy.name,
      image: 'assets/images/intolerences/soy.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.sulfite.name,
      image: 'assets/images/intolerences/sulfite.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.treeNut.name,
      image: 'assets/images/intolerences/tree-nut.png',
      imgSource: ImageSource.asset,
    ),
    BasicInfoModel(
      name: Intolerence.wheat.name,
      image: 'assets/images/intolerences/wheat.png',
      imgSource: ImageSource.asset,
    ),
  ],
);
