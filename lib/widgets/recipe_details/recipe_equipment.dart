import 'package:flutter/material.dart';

import '../../models/equipment_model.dart';
import 'circular_avatar_list_view.dart';

class RecipeEquipment extends StatelessWidget {
  const RecipeEquipment({
    super.key,
    required this.equipment,
    required this.networkedImages,
  });

  final bool networkedImages;
  final List<EquipmentModel> equipment;

  @override
  Widget build(BuildContext context) {
    return CircularAvatarListView(
      padding: const EdgeInsets.only(left: 12),
      title: 'Equipments',
      items: equipment.map((equipment) {
        return TitledCircularAvatar(
          type: RecipeAvatarType.equipment,
          isNetworkedImg: networkedImages,
          title: equipment.name,
          imgSrc: equipment.image,
        );
      }).toList(),
    );
  }
}
