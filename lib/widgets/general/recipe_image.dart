import 'package:flutter/material.dart';

class RecipeImage extends StatelessWidget {
  const RecipeImage({
    super.key,
    this.width,
    this.height,
    this.borderRadius = const BorderRadius.vertical(top: Radius.circular(12)),
    required this.imgUrl,
  });
  final double? width;
  final double? height;
  final BorderRadiusGeometry borderRadius;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
          borderRadius: borderRadius,
          child: FadeInImage(
            image: NetworkImage(imgUrl),
            imageErrorBuilder: (context, error, stackTrace) => Image.asset(
              'assets/images/placeholder.png',
              fit: BoxFit.cover,
            ),
            placeholder: const AssetImage('assets/images/placeholder.png'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          )),
    );
  }
}
