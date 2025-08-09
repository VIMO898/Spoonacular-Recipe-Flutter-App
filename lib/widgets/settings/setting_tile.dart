import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final IconData? icon;
  final String? localIconImg;
  final String title;
  final VoidCallback onTap;
  const SettingTile({
    super.key,
    this.localIconImg,
    this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        // margin: EdgeInsets.only(bottom: 6),
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 6),
        decoration: BoxDecoration(
          color: theme.cardColor,
          // borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: theme.shadowColor,
              offset: Offset(1, 1),
              blurRadius: 3,
              spreadRadius: 0,
            ),
          ],
          border: Border(top: BorderSide(color: theme.dividerColor, width: .8)),
        ),
        child: Row(
          children: [
            if (icon != null) Icon(icon!, size: 32, color: theme.primaryColor),
            if (localIconImg != null)
              Image.asset(
                localIconImg!,
                width: 32,
                height: 32,
                fit: BoxFit.cover,
              ),
            const SizedBox(width: 12),
            Text(title, style: textTheme.titleSmall),
            const Spacer(),
            Icon(Icons.chevron_right, size: 22),
          ],
        ),
      ),
    );
  }
}
