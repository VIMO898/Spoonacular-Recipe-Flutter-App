import 'package:app/screens/contact_support_screen.dart';
import 'package:app/utils/nav_helper.dart';
import 'package:app/widgets/settings/categorized_settings.dart';
import 'package:app/widgets/settings/rating_dialog/rating_dialog.dart';
import 'package:app/widgets/settings/setting_tile.dart';
import 'package:flutter/material.dart';

class SupportSettings extends StatelessWidget {
  const SupportSettings({super.key});

  void _navigateToContactSupportScreen(BuildContext context) {
    NavHelper.push(context, ContactSupportScreen());
  }

  void _handleRatingOurApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => RatingDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CategorizedSettings(category: 'Support', settingTiles: [
      SettingTile(
          title: 'Contact Support',
          localIconImg: 'assets/images/settings/support.png',
          onTap: () => _navigateToContactSupportScreen(context)),
      SettingTile(
          title: 'Rate Our App',
          localIconImg: 'assets/images/settings/ratings.png',
          onTap: () => _handleRatingOurApp(context)),
    ]);
  }
}
