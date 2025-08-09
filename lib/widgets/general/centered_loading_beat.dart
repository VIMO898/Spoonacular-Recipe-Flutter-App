import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CenteredLoadingBeat extends StatelessWidget {
  const CenteredLoadingBeat({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: LoadingAnimationWidget.beat(color: theme.primaryColor, size: 50),
    );
  }
}
