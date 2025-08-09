import 'package:flutter/material.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text('Terms of Service')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 6, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBodyText(
                'Thank you for choosing [Your App Name]. These Terms of Service outline the rules and expectations for using our app. By using this service, you acknowledge that you have read, understood, and agreed to be bound by these terms.',
                textTheme),
            _buildHeadingText('1. Use of the Application', textTheme),
            _buildBodyText(
                'Spoonacular is designed to enhance your culinary exploration by providing curated access to recipes and related information. We ask that you use the app respectfully, for its intended purpose. Any misuse, unauthorized access, or interference with the functionality of the app is strictly prohibited.',
                textTheme),
            _buildHeadingText('2. Content and Ownership', textTheme),
            _buildBodyText(
                'All recipe data, imagery, and instructions are sourced through the Spoonacular API. This content is provided for personal, non-commercial use and remains the intellectual property of Spoonacular or the original content creators.',
                textTheme),
            _buildHeadingText('3. User Interactions', textTheme),
            _buildBodyText(
                'You may interact with the app by saving recipes, downloading content for offline access, or building a watchlist. These actions are stored locally on your device and are not shared with external systems.',
                textTheme),
            _buildHeadingText('4. Limitation of Liability', textTheme),
            _buildBodyText(
                'While we aim to provide a seamless experience, the content and functionality of the app are offered “as is.” We cannot guarantee the accuracy, availability, or uninterrupted operation of the service at all times.',
                textTheme),
            _buildHeadingText('5. Updates and Modifications', textTheme),
            _buildBodyText(
                'We reserve the right to update these terms as the app evolves. Any changes will be reflected in this document, and continued use after updates indicates your acceptance of the revised terms.',
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
