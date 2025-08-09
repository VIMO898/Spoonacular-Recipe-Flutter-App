import 'dart:io';

import 'package:app/widgets/recipe_details/recipe_info_heading.dart';
import 'package:flutter/material.dart';

class CircularAvatarListView extends StatelessWidget {
  final EdgeInsets padding;
  final String title;
  final List<TitledCircularAvatar> items;
  const CircularAvatarListView({
    super.key,
    this.padding = EdgeInsets.zero,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeInfoHeading(
            text: title,
            padding: const EdgeInsets.only(top: 30, bottom: 20),
          ),
          Container(
            padding: const EdgeInsets.only(left: 6),
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return items[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

enum RecipeAvatarType { ingredients, equipment }

class TitledCircularAvatar extends StatelessWidget {
  final String title;
  final bool isNetworkedImg;
  final String imgSrc;
  final RecipeAvatarType type;
  const TitledCircularAvatar({
    super.key,
    required this.title,
    required this.imgSrc,
    required this.isNetworkedImg,
    this.type = RecipeAvatarType.ingredients,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.grey.shade300),
          ),
          child: ClipOval(
            child: CircleAvatar(
              // backgroundColor: Colors.white,
              backgroundColor: theme.cardColor,
              radius: 55,
              child: isNetworkedImg
                  ? Image.network(
                      'https://img.spoonacular.com/${type.name}_250x250/$imgSrc',
                      fit: BoxFit.cover,
                    )
                  : Image.file(File(imgSrc), fit: BoxFit.cover),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(title, style: textTheme.bodySmall),
      ],
    );
  }
}
