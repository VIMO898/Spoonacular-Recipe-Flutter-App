import 'package:app/constants/enums.dart';
import 'package:flutter/material.dart';

class StatusMessage extends StatelessWidget {
  final EdgeInsets padding;
  final IconData? icon;
  final String? imgUrl;
  final ImageSource imageSource;
  final String title;
  final String message;
  final VoidCallback? onRefresh;
  const StatusMessage({
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: 18),
    this.icon,
    this.imgUrl,
    this.imageSource = ImageSource.asset,
    required this.title,
    required this.message,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Center(
      child: SingleChildScrollView(
        padding: padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon == null && imgUrl == null
                ? _buildImage('assets/images/error.png', ImageSource.asset)
                : icon != null
                ? Icon(icon!, size: 150)
                : imgUrl != null
                ? _buildImage(imgUrl!, imageSource)
                : SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                title,
                style: textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              message,
              textAlign: TextAlign.center,
              style: textTheme.titleSmall!.copyWith(height: 1.25),
            ),
            if (onRefresh != null)
              TextButton.icon(
                onPressed: onRefresh,
                icon: Icon(Icons.refresh),
                label: Text('Refresh'),
              ),
          ],
        ),
      ),
    );
  }

  Image _buildImage(
    String imgUrl,
    ImageSource source, [
    double width = 150,
    double height = 150,
  ]) {
    return source == ImageSource.asset
        ? Image.asset(imgUrl, fit: BoxFit.cover, width: width, height: height)
        : Image.network(
            imgUrl,
            fit: BoxFit.cover,
            width: width,
            height: height,
          );
  }
}
