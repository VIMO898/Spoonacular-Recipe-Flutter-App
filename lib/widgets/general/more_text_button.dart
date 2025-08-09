import 'package:flutter/material.dart';

class MoreTextButton extends StatelessWidget {
  const MoreTextButton({super.key, required this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return TextButton(
      onPressed: onTap,
      child: Text(
        'See More',
        style: textTheme.titleSmall!.copyWith(
          fontWeight: FontWeight.w800,
          color: theme.primaryColor,
        ),
      ),
    );
  }
}
