import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 26, bottom: 12),
      child: Text(text, style: textTheme.titleMedium),
    );
  }
}
