import 'package:app/providers/controllers/theme_state_controller_provider.dart';
import 'package:app/providers/general/available_font_families_provider.dart';
import 'package:app/utils/nav_helper.dart';
import 'package:app/widgets/general/primary_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../general/full_width_wide_elevated_button.dart';

class FontFamilyPickerDialog extends ConsumerStatefulWidget {
  const FontFamilyPickerDialog({super.key});

  @override
  ConsumerState<FontFamilyPickerDialog> createState() =>
      _FontFamiliesDialogState();
}

class _FontFamiliesDialogState extends ConsumerState<FontFamilyPickerDialog> {
  String _selectedFontFamily = 'Poppins';
  bool _isFontFamilyChanged = false;
  @override
  void initState() {
    super.initState();
    _selectedFontFamily = ref.read(themeStateControllerProvider).fontFamily;
  }

  void _handleCloseDialog(BuildContext context) {
    NavHelper.pop(context);
  }

  void _handleChangeFontFamily(String fontFamily) {
    _selectedFontFamily = fontFamily;
    _isFontFamilyChanged = true;
    setState(() {});
  }

  void _handleUpdateFontFamily() {
    ref
        .read(themeStateControllerProvider.notifier)
        .setFontFamily(_selectedFontFamily);
    NavHelper.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final fontFamilies = ref.watch(availableFontFamiliesProvider);
    return PrimaryDialog(
      padding: EdgeInsets.fromLTRB(16, 22, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('App Font Family', style: textTheme.headlineSmall),
              GestureDetector(
                onTap: () => _handleCloseDialog(context),
                child: Icon(Icons.close, size: 28),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 280,
            child: ListView.builder(
              itemCount: fontFamilies.length,
              itemBuilder: (context, index) {
                final fontFamily = fontFamilies[index];
                final isSelected = _selectedFontFamily == fontFamily;
                return Container(
                  decoration: BoxDecoration(
                    border: isSelected
                        ? null
                        : Border(
                            bottom: BorderSide(width: 0.3, color: Colors.grey),
                          ),
                  ),
                  child: ListTile(
                    onTap: () => _handleChangeFontFamily(fontFamily),
                    tileColor: isSelected ? theme.primaryColor : null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    title: Text(
                      fontFamily,
                      style: textTheme.titleSmall!.copyWith(
                        fontFamily: fontFamily,
                        color: isSelected ? Colors.white : null,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
          FullWidthWideElevatedButton(
            isActive: _isFontFamilyChanged,
            height: 50,
            text: 'Update',
            onPressed: _handleUpdateFontFamily,
          ),
        ],
      ),
    );
  }
}
