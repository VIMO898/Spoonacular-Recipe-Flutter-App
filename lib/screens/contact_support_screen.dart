import 'package:flutter/material.dart';

import '../widgets/contact_support/contact_card_row.dart';
import '../widgets/contact_support/social_media_handles.dart';

class ContactSupportScreen extends StatelessWidget {
  const ContactSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Let's get in touch!"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              // height: 250,
              padding: EdgeInsets.only(top: 25, bottom: 8),
              child: Image.asset(
                'assets/images/contact-support.png',
                fit: BoxFit.contain,
              ),
            ),
            ContactCardRow(),
            SocialMediaHandles(),
          ],
        ),
      ),
    );
  }
}
