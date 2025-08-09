import 'package:app/widgets/settings/appearance_settings.dart';
import 'package:app/widgets/settings/legal_and_info_settings.dart';
import 'package:app/widgets/settings/preference_settings.dart';
import 'package:app/widgets/settings/support_settings.dart';
import 'package:app/widgets/settings/text_size_settings.dart';
import 'package:app/widgets/settings/theme_settings.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ThemeSettings(),
            TextSizeSettings(),
            AppearanceSettings(),
            PreferenceSettings(),
            LegalAndInfoSettings(),
            SupportSettings(),
          ],
        ),
      ),
    );
  }
}
