import 'package:app/constants/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/basic_info_model.dart';

final allRecipeTypesProvider = Provider(
  (ref) => [
    BasicInfoModel(
      name: RecipeType.mainCourse.name,
      image:
          'https://images.unsplash.com/photo-1559847844-5315695dadae?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFpbiUyMGNvdXJzZXxlbnwwfHwwfHx8MA%3D%3D',
    ),
    BasicInfoModel(
      name: RecipeType.sideDish.name,
      image:
          'https://images.unsplash.com/photo-1606419420761-4f2aa891ed19?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHNpZGUlMjBkaXNofGVufDB8fDB8fHww',
    ),
    BasicInfoModel(
      name: RecipeType.dessert.name,
      image:
          'https://images.unsplash.com/photo-1587314168485-3236d6710814?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZGVzc2VydHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    BasicInfoModel(
      name: RecipeType.appetizer.name,
      image:
          'https://media.istockphoto.com/id/1265704837/photo/creamy-mashed-potato-croquettes-with-cheese-and-sour-cream-dip.webp?b=1&s=170667a&w=0&k=20&c=XGwhweG3m2hSQTCrKhK98QmTkcYRN2wLSsgPeBItuyo=',
    ),
    BasicInfoModel(
      name: RecipeType.salad.name,
      image:
          'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2FsYWR8ZW58MHx8MHx8fDA%3D',
    ),
    BasicInfoModel(
      name: RecipeType.bread.name,
      image:
          'https://images.unsplash.com/photo-1598373182133-52452f7691ef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGJyZWFkfGVufDB8fDB8fHww',
    ),
    BasicInfoModel(
      name: RecipeType.breakfast.name,
      image:
          'https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnJlYWtmYXN0fGVufDB8fDB8fHww',
    ),
    BasicInfoModel(
      name: RecipeType.soup.name,
      image:
          'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c291cHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    BasicInfoModel(
      name: RecipeType.beverage.name,
      image:
          'https://images.unsplash.com/photo-1551024709-8f23befc6f87?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmV2ZXJhZ2V8ZW58MHx8MHx8fDA%3D',
    ),
    BasicInfoModel(
      name: RecipeType.sauce.name,
      image:
          'https://images.unsplash.com/photo-1472476443507-c7a5948772fc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2F1Y2V8ZW58MHx8MHx8fDA%3D',
    ),
    BasicInfoModel(
      name: RecipeType.marinade.name,
      image:
          'https://images.unsplash.com/photo-1609534751961-f396ded2af99?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bWFyaW5hZGV8ZW58MHx8MHx8fDA%3D',
    ),
    BasicInfoModel(
      name: RecipeType.fingerfood.name,
      image:
          'https://images.unsplash.com/photo-1532465909-4e0278962a2b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZmluZ2VyZm9vZHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    BasicInfoModel(
      name: RecipeType.snack.name,
      image:
          'https://images.unsplash.com/photo-1621939514649-280e2ee25f60?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c25hY2t8ZW58MHx8MHx8fDA%3D',
    ),
    BasicInfoModel(
      name: RecipeType.drink.name,
      image:
          'https://images.unsplash.com/photo-1547595628-c61a29f496f0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGRyaW5rfGVufDB8fDB8fHww',
    ),
  ],
);
