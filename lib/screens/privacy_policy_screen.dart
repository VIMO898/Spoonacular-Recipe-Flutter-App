import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text('Privacy Policy')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 6, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBodyText(
                'Your trust matters to us. This Privacy Policy explains how [Your App Name] handles information, even in its simplest forms, with care and transparency.',
                textTheme),
            _buildHeadingText('1. What We Collect', textTheme),
            _buildBodyText(
                'We do not require or collect personal information such as your name, email, or contact details. Basic app usage data may be collected anonymously to help us understand performance and improve user experience.',
                textTheme),
            _buildHeadingText(
                '2. Local Storage and User Preferences', textTheme),
            _buildBodyText(
                'Features like saving recipes or downloading content for offline use are handled locally on your device. This means you’re in control — your data stays with you unless you choose to remove it.',
                textTheme),
            _buildHeadingText('3. Third-Party Services', textTheme),
            _buildBodyText(
                'Recipe data is provided via the Spoonacular API. While we trust their service, we encourage you to review Spoonacular’s own privacy practices for full transparency.',
                textTheme),
            _buildHeadingText('4. Security', textTheme),
            _buildBodyText(
                'We take a minimalist approach to data. With no account creation or cloud storage, your privacy is inherently protected. We do not store sensitive user data on our servers.',
                textTheme),
            _buildHeadingText('5. Your Rights', textTheme),
            _buildBodyText(
                'You may uninstall the app at any time to stop data collection and remove all locally stored content. Should you have any concerns or questions, please feel free to contact us.',
                textTheme),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadingText(String text, TextTheme textTheme) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(text, style: textTheme.headlineMedium),
      );

  Widget _buildBodyText(String text, TextTheme textTheme) => Padding(
        padding: const EdgeInsets.only(top: 9),
        child: Text(text, style: textTheme.bodyLarge),
      );
}
