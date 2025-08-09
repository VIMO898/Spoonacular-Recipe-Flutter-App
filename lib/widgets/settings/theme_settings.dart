import 'package:app/extensions/string_extension.dart';
import 'package:app/providers/controllers/theme_state_controller_provider.dart';
import 'package:app/widgets/settings/categorized_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSettings extends ConsumerWidget {
  const ThemeSettings({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final themeState = ref.watch(themeStateControllerProvider);
    final useSystem = themeState.useSystem;
    final themeMode = useSystem ? ThemeMode.system : themeState.themeMode;
    final isDarkMode = themeState.themeMode == ThemeMode.dark;
    return CategorizedSettings(
      category: 'Theme',
      settingTiles: [
        SizedBox(
          height: 120,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 14,
              mainAxisExtent: 120,
            ),
            itemCount: ThemeMode.values.length,
            itemBuilder: (context, index) {
              final currThemeMode = ThemeMode.values[index];
              final isSelected = currThemeMode == themeMode;
              // final isLastItem = index >= (ThemeMode.values.length - 1);
              return _buildOutlinedCard(
                context,
                ref,
                isSelected,
                isDarkMode,
                currThemeMode,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildOutlinedCard(
    BuildContext context,
    WidgetRef ref,
    bool isSelected,
    bool isDarkMode,
    ThemeMode themeMode,
  ) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final primaryColor = theme.primaryColor;
    final boxRadius = BorderRadius.circular(20);
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: () => ref
                .read(themeStateControllerProvider.notifier)
                .setThemeMode(themeMode),
            borderRadius: boxRadius,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isSelected ? primaryColor : null,
                border: !isSelected ? Border.all(color: Colors.grey) : null,
                borderRadius: boxRadius,
              ),
              child: Icon(
                iconsForThemeModes[themeMode],
                color: isSelected ? Colors.white : null,
                size: 32,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          themeMode.name.toCapitalizeFirstLetter(),
          style: textTheme.titleSmall?.copyWith(
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ],
    );
  }
}

Map<ThemeMode, IconData> iconsForThemeModes = {
  ThemeMode.system: Icons.tune_outlined,
  ThemeMode.dark: Icons.dark_mode_outlined,
  ThemeMode.light: Icons.light_mode_outlined,
};
