// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ComplexSearchFilterModel {
  final String? cuisine;
  final String? excludeCuisine;
  final String? diets;
  final String? intolerances;
  final String? includeIngredients;
  final String? excludeIngredients;
  final String? tags;
  final String? equipment;
  final String? type;
  final int? maxReadyTime;
  final bool? ignorePantry;
  final String? sortDirection;
  final String? sort;
  final int? minServings;
  final int? maxServings;
  final int? minCarbs;
  final int? maxCarbs;
  final int? minProtein;
  final int? maxProtein;
  final int? minCalories;
  final int? maxCalories;
  final int? minFat;
  final int? maxFat;
  final int? minAlcohol;
  final int? maxAlcohol;
  final int? minCaffeine;
  final int? maxCaffeine;
  final int? minCopper;
  final int? maxCopper;
  final int? minCalcium;
  final int? maxCalcium;
  final int? minCholine;
  final int? maxCholine;
  final int? minCholesterol;
  final int? maxCholesterol;
  final int? minFluoride;
  final int? maxFluoride;
  final int? minSaturatedFat;
  final int? maxSaturatedFat;
  final int? minVitaminA;
  final int? maxVitaminA;
  final int? minVitaminC;
  final int? maxVitaminC;
  final int? minVitaminD;
  final int? maxVitaminD;
  final int? minVitaminE;
  final int? maxVitaminE;
  final int? minVitaminK;
  final int? maxVitaminK;
  final int? minVitaminB1;
  final int? maxVitaminB1;
  final int? minVitaminB2;
  final int? maxVitaminB2;
  final int? minVitaminB5;
  final int? maxVitaminB5;
  final int? minVitaminB3;
  final int? maxVitaminB3;
  final int? minVitaminB6;
  final int? maxVitaminB6;
  final int? minVitaminB12;
  final int? maxVitaminB12;
  final int? minFiber;
  final int? maxFiber;
  final int? minFolate;
  final int? maxFolate;
  final int? minFolicAcid;
  final int? maxFolicAcid;
  final int? minIodine;
  final int? maxIodine;
  final int? minIron;
  final int? maxIron;
  final int? minMagnesium;
  final int? maxMagnesium;
  final int? minManganese;
  final int? maxManganese;
  final int? minPhosphorus;
  final int? maxPhosphorus;
  final int? minPotassium;
  final int? maxPotassium;
  final int? minSelenium;
  final int? maxSelenium;
  final int? minSodium;
  final int? maxSodium;
  final int? minSugar;
  final int? maxSugar;
  final int? minZinc;
  final int? maxZinc;
  ComplexSearchFilterModel({
    this.cuisine,
    this.excludeCuisine,
    this.diets,
    this.intolerances,
    this.includeIngredients,
    this.excludeIngredients,
    this.type,
    this.tags,
    this.maxReadyTime,
    this.ignorePantry,
    this.sortDirection,
    this.sort,
    this.equipment,
    this.minServings,
    this.maxServings,
    this.minCarbs,
    this.maxCarbs,
    this.minProtein,
    this.maxProtein,
    this.minCalories,
    this.maxCalories,
    this.minFat,
    this.maxFat,
    this.minAlcohol,
    this.maxAlcohol,
    this.minCaffeine,
    this.maxCaffeine,
    this.minCopper,
    this.maxCopper,
    this.minCalcium,
    this.maxCalcium,
    this.minCholine,
    this.maxCholine,
    this.minCholesterol,
    this.maxCholesterol,
    this.minFluoride,
    this.maxFluoride,
    this.minSaturatedFat,
    this.maxSaturatedFat,
    this.minVitaminA,
    this.maxVitaminA,
    this.minVitaminC,
    this.maxVitaminC,
    this.minVitaminD,
    this.maxVitaminD,
    this.minVitaminE,
    this.maxVitaminE,
    this.minVitaminK,
    this.maxVitaminK,
    this.minVitaminB1,
    this.maxVitaminB1,
    this.minVitaminB2,
    this.maxVitaminB2,
    this.minVitaminB5,
    this.maxVitaminB5,
    this.minVitaminB3,
    this.maxVitaminB3,
    this.minVitaminB6,
    this.maxVitaminB6,
    this.minVitaminB12,
    this.maxVitaminB12,
    this.minFiber,
    this.maxFiber,
    this.minFolate,
    this.maxFolate,
    this.minFolicAcid,
    this.maxFolicAcid,
    this.minIodine,
    this.maxIodine,
    this.minIron,
    this.maxIron,
    this.minMagnesium,
    this.maxMagnesium,
    this.minManganese,
    this.maxManganese,
    this.minPhosphorus,
    this.maxPhosphorus,
    this.minPotassium,
    this.maxPotassium,
    this.minSelenium,
    this.maxSelenium,
    this.minSodium,
    this.maxSodium,
    this.minSugar,
    this.maxSugar,
    this.minZinc,
    this.maxZinc,
  });

  @override
  String toString() {
    return 'ComplexSearchFilterModel(cuisine: $cuisine, excludeCuisine: $excludeCuisine, diets: $diets, intolerances: $intolerances, includeIngredients: $includeIngredients, excludeIngredients: $excludeIngredients, type: $type, tags: $tags, maxReadyTime: $maxReadyTime, ignorePantry: $ignorePantry, sortDirection: $sortDirection, sort: $sort, equipment: $equipment, minServings: $minServings, maxServings: $maxServings, minCarbs: $minCarbs, maxCarbs: $maxCarbs, minProtein: $minProtein, maxProtein: $maxProtein, minCalories: $minCalories, maxCalories: $maxCalories, minFat: $minFat, maxFat: $maxFat, minAlcohol: $minAlcohol, maxAlcohol: $maxAlcohol, minCaffeine: $minCaffeine, maxCaffeine: $maxCaffeine, minCopper: $minCopper, maxCopper: $maxCopper, minCalcium: $minCalcium, maxCalcium: $maxCalcium, minCholine: $minCholine, maxCholine: $maxCholine, minCholesterol: $minCholesterol, maxCholesterol: $maxCholesterol, minFluoride: $minFluoride, maxFluoride: $maxFluoride, minSaturatedFat: $minSaturatedFat, maxSaturatedFat: $maxSaturatedFat, minVitaminA: $minVitaminA, maxVitaminA: $maxVitaminA, minVitaminC: $minVitaminC, maxVitaminC: $maxVitaminC, minVitaminD: $minVitaminD, maxVitaminD: $maxVitaminD, minVitaminE: $minVitaminE, maxVitaminE: $maxVitaminE, minVitaminK: $minVitaminK, maxVitaminK: $maxVitaminK, minVitaminB1: $minVitaminB1, maxVitaminB1: $maxVitaminB1, minVitaminB2: $minVitaminB2, maxVitaminB2: $maxVitaminB2, minVitaminB5: $minVitaminB5, maxVitaminB5: $maxVitaminB5, minVitaminB3: $minVitaminB3, maxVitaminB3: $maxVitaminB3, minVitaminB6: $minVitaminB6, maxVitaminB6: $maxVitaminB6, minVitaminB12: $minVitaminB12, maxVitaminB12: $maxVitaminB12, minFiber: $minFiber, maxFiber: $maxFiber, minFolate: $minFolate, maxFolate: $maxFolate, minFolicAcid: $minFolicAcid, maxFolicAcid: $maxFolicAcid, minIodine: $minIodine, maxIodine: $maxIodine, minIron: $minIron, maxIron: $maxIron, minMagnesium: $minMagnesium, maxMagnesium: $maxMagnesium, minManganese: $minManganese, maxManganese: $maxManganese, minPhosphorus: $minPhosphorus, maxPhosphorus: $maxPhosphorus, minPotassium: $minPotassium, maxPotassium: $maxPotassium, minSelenium: $minSelenium, maxSelenium: $maxSelenium, minSodium: $minSodium, maxSodium: $maxSodium, minSugar: $minSugar, maxSugar: $maxSugar, minZinc: $minZinc, maxZinc: $maxZinc)';
  }

  ComplexSearchFilterModel copyWith({
    String? cuisine,
    String? excludeCuisine,
    String? diets,
    String? intolerances,
    String? includeIngredients,
    String? excludeIngredients,
    String? type,
    String? tags,
    int? maxReadyTime,
    bool? ignorePantry,
    String? sortDirection,
    String? sort,
    String? equipment,
    int? minServings,
    int? maxServings,
    int? minCarbs,
    int? maxCarbs,
    int? minProtein,
    int? maxProtein,
    int? minCalories,
    int? maxCalories,
    int? minFat,
    int? maxFat,
    int? minAlcohol,
    int? maxAlcohol,
    int? minCaffeine,
    int? maxCaffeine,
    int? minCopper,
    int? maxCopper,
    int? minCalcium,
    int? maxCalcium,
    int? minCholine,
    int? maxCholine,
    int? minCholesterol,
    int? maxCholesterol,
    int? minFluoride,
    int? maxFluoride,
    int? minSaturatedFat,
    int? maxSaturatedFat,
    int? minVitaminA,
    int? maxVitaminA,
    int? minVitaminC,
    int? maxVitaminC,
    int? minVitaminD,
    int? maxVitaminD,
    int? minVitaminE,
    int? maxVitaminE,
    int? minVitaminK,
    int? maxVitaminK,
    int? minVitaminB1,
    int? maxVitaminB1,
    int? minVitaminB2,
    int? maxVitaminB2,
    int? minVitaminB5,
    int? maxVitaminB5,
    int? minVitaminB3,
    int? maxVitaminB3,
    int? minVitaminB6,
    int? maxVitaminB6,
    int? minVitaminB12,
    int? maxVitaminB12,
    int? minFiber,
    int? maxFiber,
    int? minFolate,
    int? maxFolate,
    int? minFolicAcid,
    int? maxFolicAcid,
    int? minIodine,
    int? maxIodine,
    int? minIron,
    int? maxIron,
    int? minMagnesium,
    int? maxMagnesium,
    int? minManganese,
    int? maxManganese,
    int? minPhosphorus,
    int? maxPhosphorus,
    int? minPotassium,
    int? maxPotassium,
    int? minSelenium,
    int? maxSelenium,
    int? minSodium,
    int? maxSodium,
    int? minSugar,
    int? maxSugar,
    int? minZinc,
    int? maxZinc,
  }) {
    return ComplexSearchFilterModel(
      cuisine: cuisine ?? this.cuisine,
      excludeCuisine: excludeCuisine ?? this.excludeCuisine,
      diets: diets ?? this.diets,
      intolerances: intolerances ?? this.intolerances,
      includeIngredients: includeIngredients ?? this.includeIngredients,
      excludeIngredients: excludeIngredients ?? this.excludeIngredients,
      type: type ?? this.type,
      tags: tags ?? this.tags,
      maxReadyTime: maxReadyTime ?? this.maxReadyTime,
      ignorePantry: ignorePantry ?? this.ignorePantry,
      sortDirection: sortDirection ?? this.sortDirection,
      sort: sort ?? this.sort,
      equipment: equipment ?? this.equipment,
      minServings: minServings ?? this.minServings,
      maxServings: maxServings ?? this.maxServings,
      minCarbs: minCarbs ?? this.minCarbs,
      maxCarbs: maxCarbs ?? this.maxCarbs,
      minProtein: minProtein ?? this.minProtein,
      maxProtein: maxProtein ?? this.maxProtein,
      minCalories: minCalories ?? this.minCalories,
      maxCalories: maxCalories ?? this.maxCalories,
      minFat: minFat ?? this.minFat,
      maxFat: maxFat ?? this.maxFat,
      minAlcohol: minAlcohol ?? this.minAlcohol,
      maxAlcohol: maxAlcohol ?? this.maxAlcohol,
      minCaffeine: minCaffeine ?? this.minCaffeine,
      maxCaffeine: maxCaffeine ?? this.maxCaffeine,
      minCopper: minCopper ?? this.minCopper,
      maxCopper: maxCopper ?? this.maxCopper,
      minCalcium: minCalcium ?? this.minCalcium,
      maxCalcium: maxCalcium ?? this.maxCalcium,
      minCholine: minCholine ?? this.minCholine,
      maxCholine: maxCholine ?? this.maxCholine,
      minCholesterol: minCholesterol ?? this.minCholesterol,
      maxCholesterol: maxCholesterol ?? this.maxCholesterol,
      minFluoride: minFluoride ?? this.minFluoride,
      maxFluoride: maxFluoride ?? this.maxFluoride,
      minSaturatedFat: minSaturatedFat ?? this.minSaturatedFat,
      maxSaturatedFat: maxSaturatedFat ?? this.maxSaturatedFat,
      minVitaminA: minVitaminA ?? this.minVitaminA,
      maxVitaminA: maxVitaminA ?? this.maxVitaminA,
      minVitaminC: minVitaminC ?? this.minVitaminC,
      maxVitaminC: maxVitaminC ?? this.maxVitaminC,
      minVitaminD: minVitaminD ?? this.minVitaminD,
      maxVitaminD: maxVitaminD ?? this.maxVitaminD,
      minVitaminE: minVitaminE ?? this.minVitaminE,
      maxVitaminE: maxVitaminE ?? this.maxVitaminE,
      minVitaminK: minVitaminK ?? this.minVitaminK,
      maxVitaminK: maxVitaminK ?? this.maxVitaminK,
      minVitaminB1: minVitaminB1 ?? this.minVitaminB1,
      maxVitaminB1: maxVitaminB1 ?? this.maxVitaminB1,
      minVitaminB2: minVitaminB2 ?? this.minVitaminB2,
      maxVitaminB2: maxVitaminB2 ?? this.maxVitaminB2,
      minVitaminB5: minVitaminB5 ?? this.minVitaminB5,
      maxVitaminB5: maxVitaminB5 ?? this.maxVitaminB5,
      minVitaminB3: minVitaminB3 ?? this.minVitaminB3,
      maxVitaminB3: maxVitaminB3 ?? this.maxVitaminB3,
      minVitaminB6: minVitaminB6 ?? this.minVitaminB6,
      maxVitaminB6: maxVitaminB6 ?? this.maxVitaminB6,
      minVitaminB12: minVitaminB12 ?? this.minVitaminB12,
      maxVitaminB12: maxVitaminB12 ?? this.maxVitaminB12,
      minFiber: minFiber ?? this.minFiber,
      maxFiber: maxFiber ?? this.maxFiber,
      minFolate: minFolate ?? this.minFolate,
      maxFolate: maxFolate ?? this.maxFolate,
      minFolicAcid: minFolicAcid ?? this.minFolicAcid,
      maxFolicAcid: maxFolicAcid ?? this.maxFolicAcid,
      minIodine: minIodine ?? this.minIodine,
      maxIodine: maxIodine ?? this.maxIodine,
      minIron: minIron ?? this.minIron,
      maxIron: maxIron ?? this.maxIron,
      minMagnesium: minMagnesium ?? this.minMagnesium,
      maxMagnesium: maxMagnesium ?? this.maxMagnesium,
      minManganese: minManganese ?? this.minManganese,
      maxManganese: maxManganese ?? this.maxManganese,
      minPhosphorus: minPhosphorus ?? this.minPhosphorus,
      maxPhosphorus: maxPhosphorus ?? this.maxPhosphorus,
      minPotassium: minPotassium ?? this.minPotassium,
      maxPotassium: maxPotassium ?? this.maxPotassium,
      minSelenium: minSelenium ?? this.minSelenium,
      maxSelenium: maxSelenium ?? this.maxSelenium,
      minSodium: minSodium ?? this.minSodium,
      maxSodium: maxSodium ?? this.maxSodium,
      minSugar: minSugar ?? this.minSugar,
      maxSugar: maxSugar ?? this.maxSugar,
      minZinc: minZinc ?? this.minZinc,
      maxZinc: maxZinc ?? this.maxZinc,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cuisine': cuisine,
      'excludeCuisine': excludeCuisine,
      'diets': diets,
      'intolerances': intolerances,
      'includeIngredients': includeIngredients,
      'excludeIngredients': excludeIngredients,
      'type': type,
      'tags': tags,
      'maxReadyTime': maxReadyTime,
      'ignorePantry': ignorePantry,
      'sortDirection': sortDirection,
      'sort': sort,
      'equipment': equipment,
      'minServings': minServings,
      'maxServings': maxServings,
      'minCarbs': minCarbs,
      'maxCarbs': maxCarbs,
      'minProtein': minProtein,
      'maxProtein': maxProtein,
      'minCalories': minCalories,
      'maxCalories': maxCalories,
      'minFat': minFat,
      'maxFat': maxFat,
      'minAlcohol': minAlcohol,
      'maxAlcohol': maxAlcohol,
      'minCaffeine': minCaffeine,
      'maxCaffeine': maxCaffeine,
      'minCopper': minCopper,
      'maxCopper': maxCopper,
      'minCalcium': minCalcium,
      'maxCalcium': maxCalcium,
      'minCholine': minCholine,
      'maxCholine': maxCholine,
      'minCholesterol': minCholesterol,
      'maxCholesterol': maxCholesterol,
      'minFluoride': minFluoride,
      'maxFluoride': maxFluoride,
      'minSaturatedFat': minSaturatedFat,
      'maxSaturatedFat': maxSaturatedFat,
      'minVitaminA': minVitaminA,
      'maxVitaminA': maxVitaminA,
      'minVitaminC': minVitaminC,
      'maxVitaminC': maxVitaminC,
      'minVitaminD': minVitaminD,
      'maxVitaminD': maxVitaminD,
      'minVitaminE': minVitaminE,
      'maxVitaminE': maxVitaminE,
      'minVitaminK': minVitaminK,
      'maxVitaminK': maxVitaminK,
      'minVitaminB1': minVitaminB1,
      'maxVitaminB1': maxVitaminB1,
      'minVitaminB2': minVitaminB2,
      'maxVitaminB2': maxVitaminB2,
      'minVitaminB5': minVitaminB5,
      'maxVitaminB5': maxVitaminB5,
      'minVitaminB3': minVitaminB3,
      'maxVitaminB3': maxVitaminB3,
      'minVitaminB6': minVitaminB6,
      'maxVitaminB6': maxVitaminB6,
      'minVitaminB12': minVitaminB12,
      'maxVitaminB12': maxVitaminB12,
      'minFiber': minFiber,
      'maxFiber': maxFiber,
      'minFolate': minFolate,
      'maxFolate': maxFolate,
      'minFolicAcid': minFolicAcid,
      'maxFolicAcid': maxFolicAcid,
      'minIodine': minIodine,
      'maxIodine': maxIodine,
      'minIron': minIron,
      'maxIron': maxIron,
      'minMagnesium': minMagnesium,
      'maxMagnesium': maxMagnesium,
      'minManganese': minManganese,
      'maxManganese': maxManganese,
      'minPhosphorus': minPhosphorus,
      'maxPhosphorus': maxPhosphorus,
      'minPotassium': minPotassium,
      'maxPotassium': maxPotassium,
      'minSelenium': minSelenium,
      'maxSelenium': maxSelenium,
      'minSodium': minSodium,
      'maxSodium': maxSodium,
      'minSugar': minSugar,
      'maxSugar': maxSugar,
      'minZinc': minZinc,
      'maxZinc': maxZinc,
    };
  }

  factory ComplexSearchFilterModel.fromMap(Map<String, dynamic> map) {
    return ComplexSearchFilterModel(
      cuisine: map['cuisine'],
      excludeCuisine: map['excludeCuisine'],
      diets: map['diets'],
      intolerances: map['intolerances'],
      includeIngredients: map['includeIngredients'],
      excludeIngredients: map['excludeIngredients'],
      type: map['type'],
      tags: map['tags'],
      maxReadyTime: map['maxReadyTime'],
      ignorePantry: map['ignorePantry'],
      sortDirection: map['sortDirection'],
      equipment: map['equipment'],
      minServings: map['minServings'],
      maxServings: map['maxServings'],
      minCarbs: map['minCarbs'],
      maxCarbs: map['maxCarbs'],
      minProtein: map['minProtein'],
      maxProtein: map['maxProtein'],
      minCalories: map['minCalories'],
      maxCalories: map['maxCalories'],
      minFat: map['minFat'],
      maxFat: map['maxFat'],
      minAlcohol: map['minAlcohol'],
      maxAlcohol: map['maxAlcohol'],
      minCaffeine: map['minCaffeine'],
      maxCaffeine: map['maxCaffeine'],
      minCopper: map['minCopper'],
      maxCopper: map['maxCopper'],
      minCalcium: map['minCalcium'],
      maxCalcium: map['maxCalcium'],
      minCholine: map['minCholine'],
      maxCholine: map['maxCholine'],
      minCholesterol: map['minCholesterol'],
      maxCholesterol: map['maxCholesterol'],
      minFluoride: map['minFluoride'],
      maxFluoride: map['maxFluoride'],
      minSaturatedFat: map['minSaturatedFat'],
      maxSaturatedFat: map['maxSaturatedFat'],
      minVitaminA: map['minVitaminA'],
      maxVitaminA: map['maxVitaminA'],
      minVitaminC: map['minVitaminC'],
      maxVitaminC: map['maxVitaminC'],
      minVitaminD: map['minVitaminD'],
      maxVitaminD: map['maxVitaminD'],
      minVitaminE: map['minVitaminE'],
      maxVitaminE: map['maxVitaminE'],
      minVitaminK: map['minVitaminK'],
      maxVitaminK: map['maxVitaminK'],
      minVitaminB1: map['minVitaminB1'],
      maxVitaminB1: map['maxVitaminB1'],
      minVitaminB2: map['minVitaminB2'],
      maxVitaminB2: map['maxVitaminB2'],
      minVitaminB5: map['minVitaminB5'],
      maxVitaminB5: map['maxVitaminB5'],
      minVitaminB3: map['minVitaminB3'],
      maxVitaminB3: map['maxVitaminB3'],
      minVitaminB6: map['minVitaminB6'],
      maxVitaminB6: map['maxVitaminB6'],
      minVitaminB12: map['minVitaminB12'],
      maxVitaminB12: map['maxVitaminB12'],
      minFiber: map['minFiber'],
      maxFiber: map['maxFiber'],
      minFolate: map['minFolate'],
      maxFolate: map['maxFolate'],
      minFolicAcid: map['minFolicAcid'],
      maxFolicAcid: map['maxFolicAcid'],
      minIodine: map['minIodine'],
      maxIodine: map['maxIodine'],
      minIron: map['minIron'],
      maxIron: map['maxIron'],
      minMagnesium: map['minMagnesium'],
      maxMagnesium: map['maxMagnesium'],
      minManganese: map['minManganese'],
      maxManganese: map['maxManganese'],
      minPhosphorus: map['minPhosphorus'],
      maxPhosphorus: map['maxPhosphorus'],
      minPotassium: map['minPotassium'],
      maxPotassium: map['maxPotassium'],
      minSelenium: map['minSelenium'],
      maxSelenium: map['maxSelenium'],
      minSodium: map['minSodium'],
      maxSodium: map['maxSodium'],
      minSugar: map['minSugar'],
      maxSugar: map['maxSugar'],
      minZinc: map['minZinc'],
      maxZinc: map['maxZinc'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ComplexSearchFilterModel.fromJson(String source) =>
      ComplexSearchFilterModel.fromMap(json.decode(source));
}
