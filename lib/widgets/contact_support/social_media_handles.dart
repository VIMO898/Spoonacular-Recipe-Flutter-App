import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/snack_bar_helper.dart';

class SocialMediaHandles extends StatelessWidget {
  const SocialMediaHandles({super.key});

  Future<void> _launchSocialSite(
    BuildContext context,
    String url,
    String errorMessage,
  ) async {
    final uri = Uri.parse(url);
    final unableToLauch = !await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
    if (unableToLauch) {
      SnackBarHelper.show(context, errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final primaryColor = theme.colorScheme.primary;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Our social media', style: textTheme.titleSmall),
        const SizedBox(height: 6),
        _buildListTile(
          primaryColor,
          FontAwesomeIcons.squareXTwitter,
          'Twitter',
          () => _launchSocialSite(
            context,
            'https://twitter.com/flutterdev',
            'Unable to open our X account',
          ),
        ),
        _buildListTile(
          primaryColor,
          FontAwesomeIcons.squareInstagram,
          'Instagram',
          () => _launchSocialSite(
            context,
            'https://www.instagram.com/flutter.dev',
            'Unable to open our Instagram account',
          ),
        ),
        _buildListTile(
          primaryColor,
          FontAwesomeIcons.squareFacebook,
          'Facebook',
          () => _launchSocialSite(
            context,
            'https://www.facebook.com/flutterdev',
            'Unable to open our Facebook page',
          ),
        ),
        _buildListTile(
          primaryColor,
          FontAwesomeIcons.squareWhatsapp,
          'Whatsapp',
          () {},
        ),
      ],
    );
  }

  ListTile _buildListTile(
    Color color,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: color, size: 32),
      title: Text(title),
    );
  }
}
