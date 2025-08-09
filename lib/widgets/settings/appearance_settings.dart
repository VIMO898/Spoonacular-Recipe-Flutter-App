import 'package:app/widgets/settings/categorized_settings.dart';
import 'package:app/widgets/settings/color_picker_dialog/color_picker_dialog.dart';
import 'package:app/widgets/settings/font_families_dialog.dart';
import 'package:app/widgets/settings/setting_tile.dart';
import 'package:flutter/material.dart';

class AppearanceSettings extends StatelessWidget {
  const AppearanceSettings({super.key});

  void _handleOpenColorPickerDialog(BuildContext context) {
    showDialog(context: context, builder: (context) => ColorPickerDialog());
  }

  void _handleOpenFontFamilyPickerDialog(BuildContext context) {
    showDialog(
        context: context, builder: (context) => FontFamilyPickerDialog());
  }

  @override
  Widget build(BuildContext context) {
    return CategorizedSettings(category: 'Appearance', settingTiles: [
      SettingTile(
          title: 'Primary Color',
          localIconImg: 'assets/images/settings/color-palette.png',
          onTap: () => _handleOpenColorPickerDialog(context)),
      SettingTile(
          title: 'Font Family',
          localIconImg: 'assets/images/settings/font-family.png',
          onTap: () => _handleOpenFontFamilyPickerDialog(context)),
    ]);
  }
}
