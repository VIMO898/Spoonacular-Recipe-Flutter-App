import 'package:flutter/material.dart';

import '../../../models/primary_color_model..dart';

class ColorCard extends StatelessWidget {
  const ColorCard({
    super.key,
    required this.onTap,
    required this.color,
    required this.isSelected,
  });

  final VoidCallback onTap;
  final PrimaryColorModel color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  decoration: BoxDecoration(
                    border: isSelected
                        ? Border.all(width: 1.5, color: Colors.white)
                        : null,
                    color: color.color,
                    boxShadow: [
                      if (isSelected)
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 0),
                          blurRadius: 2,
                          spreadRadius: 0.4,
                        ),
                    ],
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                if (isSelected)
                  Positioned(
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Text(
              color.name,
              style: textTheme.bodyMedium!.copyWith(
                height: 1,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
