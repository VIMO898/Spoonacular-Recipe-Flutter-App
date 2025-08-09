import 'package:flutter/material.dart';

class NetworkImageWithPlaceholder extends StatelessWidget {
  final String networkImgUrl;
  final String placeholderImgAssetPath; // Path to your local placeholder image

  const NetworkImageWithPlaceholder({
    super.key,
    required this.networkImgUrl,
    required this.placeholderImgAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      image: NetworkImage(networkImgUrl),
      placeholder: AssetImage(placeholderImgAssetPath),
      fit: BoxFit.cover,
      width: double.infinity,
    );
  }
}
