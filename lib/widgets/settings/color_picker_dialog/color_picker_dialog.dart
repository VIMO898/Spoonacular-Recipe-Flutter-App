import 'package:app/models/primary_color_model..dart';
import 'package:app/providers/controllers/theme_state_controller_provider.dart';
import 'package:app/providers/general/primary_colors_provider.dart';
import 'package:app/widgets/general/full_width_wide_elevated_button.dart';
import 'package:app/widgets/general/primary_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/nav_helper.dart';
import 'color_grid_view.dart';

class ColorPickerDialog extends ConsumerStatefulWidget {
  const ColorPickerDialog({super.key});

  @override
  ConsumerState<ColorPickerDialog> createState() => _ColorPickerDialogState();
}

class _ColorPickerDialogState extends ConsumerState<ColorPickerDialog> {
  late PrimaryColorModel _selectedPrimaryColor;
  bool _isColorChanged = false;
  @override
  void initState() {
    super.initState();
    _selectedPrimaryColor = ref.read(themeStateControllerProvider).primaryColor;
  }

  void _handleCloseDialog(BuildContext context) {
    NavHelper.pop(context);
  }

  void _handlePrimaryColorChange(PrimaryColorModel newColor) {
    _selectedPrimaryColor = newColor;
    _isColorChanged = true;
    setState(() {});
  }

  void _handleColorUpdateSubmission() {
    ref
        .read(themeStateControllerProvider.notifier)
        .setPrimaryColor(_selectedPrimaryColor);
    _handleCloseDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final primaryColors = ref.watch(primaryColorsProvider);
    return PrimaryDialog(
      padding: EdgeInsets.fromLTRB(16, 22, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('App Primary Color', style: textTheme.headlineSmall),
              GestureDetector(
                onTap: () => _handleCloseDialog(context),
                child: Icon(Icons.close, size: 28),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ColorGridView(
            selectedColor: _selectedPrimaryColor,
            colors: primaryColors,
            onSelectNewColor: _handlePrimaryColorChange,
          ),
          const SizedBox(height: 12),
          FullWidthWideElevatedButton(
            isActive: _isColorChanged,
            height: 50,
            text: 'Update',
            onPressed: _handleColorUpdateSubmission,
          ),
        ],
      ),
    );
  }
}
