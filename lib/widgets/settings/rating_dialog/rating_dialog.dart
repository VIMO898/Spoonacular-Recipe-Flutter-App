import 'package:app/utils/nav_helper.dart';
import 'package:app/utils/snack_bar_helper.dart';
import 'package:app/widgets/general/primary_dialog.dart';
import 'package:app/widgets/settings/rating_dialog/dialog_buttons.dart';
import 'package:flutter/material.dart';

import 'rating_stars.dart';
import 'stacked_clip_path_waves.dart';

class RatingDialog extends StatefulWidget {
  const RatingDialog({super.key});

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  int _rating = 0;
  void _handleChangeRating(int updatedRating) {
    setState(() => _rating = updatedRating);
  }

  void _handleRatingSubmission() {
    NavHelper.pop(context);
    SnackBarHelper.show(
      context,
      'Thanks for your review. It has been submitted.',
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return PrimaryDialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StackedClipPathWaves(rating: _rating),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              getRatingMessage(_rating),
              style: textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
          RatingStars(stars: _rating, onSelectRatings: _handleChangeRating),
          DialogButtons(onSubmit: _handleRatingSubmission),
        ],
      ),
    );
  }
}

String getRatingMessage(int rating) {
  switch (rating) {
    case 1:
      return "We're really sorry.\nThat didn’t go well.";
    case 2:
      return "Hmm... not great.\nWe’ll try to improve it.";
    case 3:
      return "Thanks!\nLet us know how we can do better.";
    case 4:
      return "Great!\nWe’re almost there—thanks a lot!";
    case 5:
      return "Amazing!\nYou just made our day! 💖";
    default:
      return "How Would You Rate Our\nApp Experience?";
  }
}
