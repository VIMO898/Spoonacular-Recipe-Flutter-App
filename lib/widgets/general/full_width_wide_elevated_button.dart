import 'package:flutter/material.dart';

class FullWidthWideElevatedButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onPressed;
  final Color? color;
  final EdgeInsets? padding;
  final double height;
  const FullWidthWideElevatedButton({
    super.key,
    this.padding,
    this.color,
    this.height = 55.0,
    this.isActive = true,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final primaryColor = theme.primaryColor;
    return Container(
        width: double.infinity,
        height: height,
        padding: padding,
        child: ElevatedButton(
            onPressed: isActive ? onPressed : null,
            style: ElevatedButton.styleFrom(
                backgroundColor:
                    !isActive ? Colors.grey.shade500 : color ?? primaryColor),
            child: Text(
              text,
              style: textTheme.titleSmall!.copyWith(color: Colors.white),
            )));
  }
}
