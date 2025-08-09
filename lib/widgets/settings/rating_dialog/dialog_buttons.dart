import 'package:app/utils/nav_helper.dart';
import 'package:flutter/material.dart';

import '../../general/full_width_wide_elevated_button.dart';

class DialogButtons extends StatelessWidget {
  final VoidCallback onSubmit;
  const DialogButtons({super.key, required this.onSubmit});

  void _handleGoBack(BuildContext context) {
    NavHelper.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FullWidthWideElevatedButton(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          text: 'Submit',
          onPressed: onSubmit,
        ),
        TextButton(
          onPressed: () => _handleGoBack(context),
          child: Text('No, Thanks!', style: textTheme.bodyMedium),
        ),
      ],
    );
  }
}
