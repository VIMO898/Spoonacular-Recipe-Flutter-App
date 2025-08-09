import 'package:app/extensions/string_extension.dart';
import 'package:app/providers/controllers/theme_state_controller_provider.dart';
import 'package:app/widgets/settings/categorized_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/enums.dart';

class TextSizeSettings extends ConsumerWidget {
  const TextSizeSettings({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final themeState = ref.watch(themeStateControllerProvider);
    int currentIndex =
        themeState.textScaleLevel.index; // 0: small, 1: medium, 2: large

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final fontSizeCount = TextScaleLevel.values.length;
    return CategorizedSettings(
      category: 'Text Size',
      settingTiles: [
        Slider(
          inactiveColor: theme.primaryColor.withValues(alpha: 0.26),
          value: currentIndex.toDouble(),
          min: 0,
          max: fontSizeCount.toDouble() - 1.0,
          divisions: fontSizeCount - 1,
          onChanged: (value) {
            final textScaleLevel = TextScaleLevel.values[value.toInt()];
            ref
                .read(themeStateControllerProvider.notifier)
                .setTextScaleLevel(textScaleLevel);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(TextScaleLevel.values.length, (index) {
            final label = TextScaleLevel.values[index].name
                .toCapitalizeFirstLetter();
            return Text(label, style: textTheme.titleSmall);
          }),
        ),
      ],
    );
  }
}
