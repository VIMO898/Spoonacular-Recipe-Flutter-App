import 'package:app/animations/delayed_display_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/controllers/theme_state_controller_provider.dart';
import 'recipe_info_heading.dart';

class HeadingWithArticle extends ConsumerWidget {
  final String heading;
  final String article;
  final Duration duration;
  final Duration delay;
  const HeadingWithArticle({
    super.key,
    required this.heading,
    required this.article,
    this.duration = const Duration(milliseconds: 1400),
    this.delay = const Duration(milliseconds: 800),
  });

  @override
  Widget build(BuildContext context, ref) {
    final isDarkMode =
        ref.watch(themeStateControllerProvider).themeMode == ThemeMode.dark;
    return DelayedDisplayAnimation(
      duration: duration,
      delay: delay,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RecipeInfoHeading(text: heading),
            Html(
              data: '<p>$article</p>',
              style: {
                'p': _buildDefaultTextStyle(
                  context,
                  isDarkMode,
                ).copyWith(margin: Margins.zero, padding: HtmlPaddings.zero),
                "b": Style(fontWeight: FontWeight.bold),
                "a": Style(
                  color: Colors.blue,
                  textDecoration: TextDecoration.underline,
                ),
                'li': _buildDefaultTextStyle(
                  context,
                  isDarkMode,
                ).copyWith(margin: Margins.only(bottom: 6)),
              },
            ),
          ],
        ),
      ),
    );
  }

  Style _buildDefaultTextStyle(BuildContext context, bool isDarkMode) {
    final textTheme = Theme.of(context).textTheme;
    return Style.fromTextStyle(
      textTheme.bodyMedium!.copyWith(
        height: 1.24,
        color: isDarkMode ? Colors.grey.shade400 : Colors.grey.shade700,
      ),
    );
  }
}
