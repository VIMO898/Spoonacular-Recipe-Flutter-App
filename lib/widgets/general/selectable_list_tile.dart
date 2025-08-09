import 'package:app/extensions/string_extension.dart';
import 'package:app/providers/controllers/theme_state_controller_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/enums.dart';
import '../../models/basic_info_model.dart';

class SelectableListTile extends ConsumerWidget {
  // final String title;
  // final String imgUrl;
  // final ImageSource imgSource;
  final BasicInfoModel info;
  final bool isLast;
  final bool isSelected;
  final void Function(bool updatedValue) onSelect;
  const SelectableListTile(
    this.info, {
    super.key,
    // this.imgSource = ImageSource.asset,
    // required this.title,
    // required this.imgUrl,
    required this.isSelected,
    required this.onSelect,
    this.isLast = false,
  });

  void _handleCheckboxChange() {
    onSelect(!isSelected);
  }

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final isDarkMode =
        ref.watch(themeStateControllerProvider).themeMode == ThemeMode.dark;

    final title = info.name.toCamelCase();
    final imgUrl = info.image;
    final imgSrc = info.imgSource ?? ImageSource.asset;
    return Card(
      elevation: 1,
      margin: isLast ? EdgeInsets.zero : const EdgeInsets.only(bottom: 12),
      child: ListTile(
        onTap: _handleCheckboxChange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        tileColor: theme.cardColor,
        leading: imgUrl != null
            ? CircleAvatar(
                radius: 22,
                backgroundColor: isDarkMode
                    ? Colors.black
                    : Colors.grey.shade200,
                backgroundImage: imgSrc == ImageSource.asset
                    ? AssetImage(imgUrl)
                    : NetworkImage(imgUrl),
              )
            : null,
        title: Text(title, style: textTheme.titleSmall),
        trailing: Checkbox(
          value: isSelected,
          onChanged: (_) => _handleCheckboxChange(),
        ),
        // trailing: const Icon(
        //   Icons.arrow_forward_ios,
        //   // color: Colors.white,
        // ),
      ),
    );
  }
}
