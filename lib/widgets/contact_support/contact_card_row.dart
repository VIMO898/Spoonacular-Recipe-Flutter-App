import 'package:flutter/material.dart';

import 'contact_card.dart';

class ContactCardRow extends StatelessWidget {
  const ContactCardRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 360,
        margin: EdgeInsets.only(bottom: 26),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ContactCard(
            icon: Icons.phone_in_talk_outlined,
            title: 'Call Us',
            color: Colors.blue.shade900,
            onTap: () {},
          ),
          ContactCard(
            icon: Icons.mail_outline,
            title: 'Email Us',
            color: Colors.green.shade800,
            onTap: () {},
          ),
          ContactCard(
            icon: Icons.chat_outlined,
            title: 'Chat',
            color: Colors.deepPurple.shade800,
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
