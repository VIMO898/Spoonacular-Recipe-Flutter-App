import 'package:app/constants/enums.dart';
import 'package:app/extensions/string_extension.dart';
import 'package:flutter/material.dart';

class PrimaryChip extends StatelessWidget {
  final EdgeInsets padding;
  final String title;
  final ImageSource imgSource;
  final String? imgUrl;
  final VoidCallback? onTap;
  final VoidCallback? onRemove;
  const PrimaryChip({
    super.key,
    this.padding = EdgeInsets.zero,
    required this.title,
    this.imgSource = ImageSource.asset,
    this.imgUrl,
    this.onTap,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22),
      child: Padding(
        padding: padding,
        child: Chip(
          deleteIcon: onRemove != null ? Icon(Icons.close) : null,
          onDeleted: onRemove,
          side: BorderSide(width: 0.5, color: Colors.grey.shade200),
          shadowColor: Colors.grey.shade50,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          color: WidgetStatePropertyAll(theme.cardColor),
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (imgUrl != null)
                // Container(
                //   padding: const EdgeInsets.only(right: 4),
                //   width: 34,
                //   height: 34,
                //   child: imgSource == ImageSource.asset
                //       ? Image.asset(imgUrl!, fit: BoxFit.cover)
                //       : Image.network(imgUrl!, fit: BoxFit.cover),
                // ),
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: CircleAvatar(
                    radius: 17.2,
                    backgroundImage: imgSource == ImageSource.asset
                        ? AssetImage(imgUrl!)
                        : NetworkImage(imgUrl!),
                  ),
                ),
              Text(
                title.toCapitalizeFirstLetter(),
                style: textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
