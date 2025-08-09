import 'package:app/screens/faq_screen.dart';
import 'package:app/screens/privacy_policy_screen.dart';
import 'package:app/screens/terms_of_service_screen.dart';
import 'package:app/utils/nav_helper.dart';
import 'package:app/widgets/settings/categorized_settings.dart';
import 'package:app/widgets/settings/setting_tile.dart';
import 'package:flutter/material.dart';

class LegalAndInfoSettings extends StatelessWidget {
  const LegalAndInfoSettings({super.key});

  void _navigateToFaqScreen(BuildContext context) {
    NavHelper.push(context, FaqScreen());
  }

  void _navigateToTermsOfServiceScreen(BuildContext context) {
    NavHelper.push(context, TermsOfServiceScreen());
  }

  void _navigateToPrivacyPolicyScreen(BuildContext context) {
    NavHelper.push(context, PrivacyPolicyScreen());
  }

  @override
  Widget build(BuildContext context) {
    return CategorizedSettings(category: 'Legal & Info', settingTiles: [
      SettingTile(
          title: 'Privacy Policy',
          localIconImg: 'assets/images/settings/privacy-policy.png',
          onTap: () => _navigateToPrivacyPolicyScreen(context)),
      SettingTile(
          title: 'Terms of Service',
          localIconImg: 'assets/images/settings/terms-and-conditions.png',
          onTap: () => _navigateToTermsOfServiceScreen(context)),
      SettingTile(
          title: 'FAQ',
          localIconImg: 'assets/images/settings/faq.png',
          onTap: () => _navigateToFaqScreen(context)),
    ]);
  }
}
