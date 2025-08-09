import 'package:flutter/material.dart';

class CategorizedSettings extends StatelessWidget {
  final String category;
  final List<Widget> settingTiles;
  const CategorizedSettings(
      {super.key, required this.category, required this.settingTiles});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(category, style: textTheme.bodyLarge),
            const SizedBox(height: 12),
            ...settingTiles,
          ]),
    );
  }
}
