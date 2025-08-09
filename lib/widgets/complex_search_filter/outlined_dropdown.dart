import 'package:flutter/material.dart';

class OutlinedDropdown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> dropdownMenuItems;
  final void Function(T? updatedValue) onChanged;
  final String? hintText;
  final T? value;
  const OutlinedDropdown({
    super.key,
    required this.dropdownMenuItems,
    required this.onChanged,
    this.hintText,
    this.value,
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final outlinedBorderStyle = OutlineInputBorder(
      borderSide: BorderSide(color: theme.dividerColor, width: 1),
      borderRadius: BorderRadius.circular(14),
    );
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: DropdownButtonFormField<T>(
        isExpanded: true,
        value: value,
        decoration: InputDecoration(
          // labelText: 'Sort Direction',
          hintText: hintText,
          border: outlinedBorderStyle,
          enabledBorder: outlinedBorderStyle,
          focusedBorder: outlinedBorderStyle,
        ),
        icon: const Icon(Icons.arrow_drop_down, size: 30),
        // dropdownColor: Colors.white,
        onChanged: onChanged,
        items: dropdownMenuItems,
      ),
    );
  }
}
