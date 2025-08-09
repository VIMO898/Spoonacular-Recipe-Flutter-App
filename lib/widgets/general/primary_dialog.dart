import 'package:app/animations/delayed_display_animation.dart';
import 'package:flutter/material.dart';

class PrimaryDialog extends StatelessWidget {
  final EdgeInsets padding;
  final Widget child;
  const PrimaryDialog({
    super.key,
    this.padding = const EdgeInsets.only(bottom: 14),
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DelayedDisplayAnimation(
      initialSlidingOffset: const Offset(0, -0.1),
      duration: const Duration(milliseconds: 250),
      curve: Curves.linear,
      delay: Duration.zero,
      child: Dialog(
        alignment: Alignment.center,
        backgroundColor: theme.cardColor,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        child: Padding(padding: padding, child: child),
      ),
    );
  }
}
