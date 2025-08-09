import 'package:flutter/material.dart';

class SearchFilterSwitchTile extends StatelessWidget {
  final String label;
  final bool value;
  final void Function(bool)? onChanged;
  const SearchFilterSwitchTile({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: SwitchListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          label,
          style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
        ),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
