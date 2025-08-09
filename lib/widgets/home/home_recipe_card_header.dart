import 'package:flutter/material.dart';

class HomeRecipeCardHeader extends StatelessWidget {
  const HomeRecipeCardHeader({
    super.key,
    required this.title,
    required this.icon,
    required this.onIconTap,
    this.padding = const EdgeInsets.only(bottom: 18),
  });

  final String title;
  final IconData icon;
  final EdgeInsets padding;
  final VoidCallback onIconTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
          ),
          GestureDetector(onTap: onIconTap, child: Icon(icon, size: 25)),
        ],
      ),
    );
  }
}
