import 'package:app/widgets/complex_search_filter/heading_text.dart';
import 'package:flutter/material.dart';

import '../general/primary_chip.dart';

class ChoiceChips<T> extends StatelessWidget {
  final String title;
  final List<T> selectedChoices;
  final PrimaryChip Function(T choice) choiceBuilder;
  final bool allChoicesSelected;
  final VoidCallback onAddChoices;
  const ChoiceChips({
    super.key,
    required this.title,
    required this.selectedChoices,
    required this.choiceBuilder,
    required this.onAddChoices,
    this.allChoicesSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(title),
        Container(
          width: double.infinity,
          padding: selectedChoices.isNotEmpty
              ? const EdgeInsets.symmetric(horizontal: 10, vertical: 12)
              : EdgeInsets.zero,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: theme.dividerColor),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 9,
                children: selectedChoices
                    .map((choice) => choiceBuilder(choice))
                    .toList(),
              ),
              if (!allChoicesSelected)
                Padding(
                  padding: selectedChoices.isNotEmpty
                      ? const EdgeInsets.only(top: 6)
                      : const EdgeInsets.symmetric(vertical: 4),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: onAddChoices,
                    icon: Icon(Icons.add),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
