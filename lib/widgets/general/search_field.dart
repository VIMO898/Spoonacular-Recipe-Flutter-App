import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final void Function(String newValue)? onChanged;
  final void Function(String newValue)? onSubmitted;
  final bool readOnly;
  final EdgeInsets paddingOutside;
  final Color? searchIconColor;
  const SearchField({
    super.key,
    this.controller,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.searchIconColor,
    this.paddingOutside = EdgeInsets.zero,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final outlinedBorderStyle = OutlineInputBorder(
      borderSide: BorderSide(color: theme.dividerColor, width: 1),
      borderRadius: BorderRadius.circular(14),
    );
    return Padding(
      padding: paddingOutside,
      child: TextField(
        controller: controller,
        onTap: onTap,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        autocorrect: false,
        enableSuggestions: true,
        keyboardType: TextInputType.text,
        readOnly: readOnly,
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.search_outlined,
            color: searchIconColor,
            size: 28,
          ),
          hintText: 'Search Recipes...',
          hintStyle: textTheme.bodyLarge,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 17,
            vertical: 16,
          ),
          border: outlinedBorderStyle,
          errorBorder: outlinedBorderStyle,
          focusedBorder: outlinedBorderStyle,
          enabledBorder: outlinedBorderStyle,
        ),
      ),
    );
  }
}
