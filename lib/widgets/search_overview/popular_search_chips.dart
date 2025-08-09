import 'package:app/animations/delayed_display_animation.dart';
import 'package:app/models/basic_info_model.dart';
import 'package:app/widgets/general/primary_chip.dart';
import 'package:flutter/material.dart';

class PopularSearchChips extends StatelessWidget {
  final List<BasicInfoModel> mostSearchedRecipes;
  final void Function(BasicInfoModel recipe) onTap;
  const PopularSearchChips(this.mostSearchedRecipes, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return DelayedDisplayAnimation(
      duration: Duration(milliseconds: 1200),
      child: Align(
        alignment: Alignment.topLeft,
        child: Wrap(
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          runAlignment: WrapAlignment.start,
          direction: Axis.horizontal,
          spacing: 12,
          runSpacing: 10,
          children: mostSearchedRecipes
              .map(
                (recipe) => PrimaryChip(
                  imgUrl: recipe.image,
                  title: recipe.name,
                  onTap: () => onTap(recipe),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
