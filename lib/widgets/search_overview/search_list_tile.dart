import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/enums.dart';
import '../../providers/controllers/theme_state_controller_provider.dart';

class SearchListTile extends ConsumerWidget {
  final String title;
  final String imgUrl;
  final ImageSource imgSource;
  final bool isLast;
  final VoidCallback onTap;
  const SearchListTile({
    super.key,
    this.isLast = false,
    this.imgSource = ImageSource.network,
    required this.title,
    required this.imgUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final isDarkMode =
        ref.watch(themeStateControllerProvider).themeMode == ThemeMode.dark;
    return Card(
      elevation: 1.25,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: isLast ? EdgeInsets.zero : const EdgeInsets.only(bottom: 12),
      child: ListTile(
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        tileColor: theme.cardColor,
        leading: Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: isDarkMode ? Colors.black : Colors.grey.shade200,
            backgroundImage: switch (imgSource) {
              ImageSource.network => NetworkImage(imgUrl),
              ImageSource.asset => AssetImage(imgUrl),
            },
          ),
        ),
        title: Text(title, style: textTheme.titleSmall),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          // color: Colors.white,
        ),
      ),
    );
  }
}
