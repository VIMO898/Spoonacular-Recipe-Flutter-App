import 'package:flutter/material.dart';

class RecipeInfoHeading extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final double fontSize;
  const RecipeInfoHeading({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.only(top: 35, bottom: 16),
    this.fontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: textTheme.headlineLarge!.copyWith(fontSize: fontSize),
      ),
    );
  }
}
