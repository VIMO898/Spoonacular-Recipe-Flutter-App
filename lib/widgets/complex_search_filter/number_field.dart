import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberField extends StatefulWidget {
  final String hintText;
  final String? helperText;
  final int? initialValue;
  final VoidCallback? onTap;
  final void Function(String newValue)? onChanged;
  final String? Function(String?)? validator;
  final bool disabled;
  const NumberField({
    super.key,
    required this.hintText,
    this.helperText,
    this.initialValue,
    this.onTap,
    this.onChanged,
    this.validator,
    this.disabled = false,
  });

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  String? _errorText;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final outlinedBorderStyle = OutlineInputBorder(
      borderSide: BorderSide(color: theme.dividerColor, width: 1),
      borderRadius: BorderRadius.circular(14),
    );
    final outlinedErrorBorderStyle = outlinedBorderStyle.copyWith(
      borderSide: outlinedBorderStyle.borderSide.copyWith(color: Colors.red),
    );
    final disabledColor = theme.dividerColor.withValues(alpha: 0.9);
    final outlinedDisabledBorderStyle = outlinedBorderStyle.copyWith(
      borderSide: outlinedBorderStyle.borderSide.copyWith(color: disabledColor),
    );
    return TextFormField(
      enabled: !widget.disabled,
      initialValue: widget.initialValue?.toString(),
      onTap: widget.onTap,
      onChanged: (value) {
        if (widget.onChanged != null) widget.onChanged!(value);
        // validate on each key stroke
        if (widget.validator != null) {
          final validationResult = widget.validator!(value);
          if (validationResult == _errorText) return;
          _errorText = validationResult;
          setState(() {});
        }
      },
      validator: widget.validator,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      autocorrect: false,
      enableSuggestions: false,

      decoration: InputDecoration(
        disabledBorder: outlinedDisabledBorderStyle,
        hintText: widget.hintText,
        hintStyle: textTheme.bodyLarge?.copyWith(
          color: widget.disabled ? disabledColor : textTheme.bodyLarge?.color,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 16,
        ),
        errorText: _errorText,
        helperText: widget.helperText,
        border: outlinedBorderStyle,

        errorBorder: outlinedErrorBorderStyle,
        focusedErrorBorder: outlinedErrorBorderStyle,
        focusedBorder: outlinedBorderStyle,
        enabledBorder: outlinedBorderStyle,
      ),
    );
  }
}
