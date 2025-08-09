import 'package:app/providers/controllers/theme_state_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeInfoCard extends ConsumerWidget {
  final int readyInMinutes;
  final int servings;
  final double pricePerServing;
  const RecipeInfoCard({
    super.key,
    required this.readyInMinutes,
    required this.servings,
    required this.pricePerServing,
  });

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context);
    final isDarkMode =
        ref.watch(themeStateControllerProvider).themeMode == ThemeMode.dark;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: theme.cardColor,
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor,
            offset: const Offset(1, 1),
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLabelValue(
            context,
            isDarkMode,
            label: '$readyInMinutes Min',
            value: 'Ready in',
          ),
          _buildVerticalDivider(),
          _buildLabelValue(
            context,
            isDarkMode,
            label: '$servings',
            value: 'Servings',
          ),
          _buildVerticalDivider(),
          _buildLabelValue(
            context,
            isDarkMode,
            label: pricePerServing.toString(),
            value: 'Price/Servings',
          ),
        ],
      ),
    );
  }

  Container _buildVerticalDivider() =>
      Container(color: Colors.red, width: 2, height: 38);

  Column _buildLabelValue(
    BuildContext context,
    bool isDarkMode, {
    required String label,
    required String value,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(label, style: textTheme.titleLarge),
        Text(
          value,
          style: textTheme.bodySmall!.copyWith(
            color: isDarkMode ? Colors.grey.shade300 : Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
