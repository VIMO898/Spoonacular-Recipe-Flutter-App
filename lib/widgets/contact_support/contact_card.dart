import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/controllers/theme_state_controller_provider.dart';

class ContactCard extends ConsumerWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;
  const ContactCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final isDarkMode =
        ref.watch(themeStateControllerProvider).themeMode == ThemeMode.dark;
    final c = isDarkMode ? Colors.white : color;
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 3,
        color: theme.cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 26),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: c.withValues(alpha: 0.18),
                child: Icon(icon, color: c, size: 26),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: c,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
