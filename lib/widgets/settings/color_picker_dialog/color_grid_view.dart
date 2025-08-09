import 'package:app/models/primary_color_model..dart';
import 'package:app/widgets/settings/color_picker_dialog/color_card.dart';
import 'package:flutter/material.dart';

class ColorGridView extends StatelessWidget {
  final List<PrimaryColorModel> colors;
  final PrimaryColorModel selectedColor;
  final void Function(PrimaryColorModel color) onSelectNewColor;
  const ColorGridView({
    super.key,
    required this.colors,
    required this.selectedColor,
    required this.onSelectNewColor,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 235,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 115,
                mainAxisSpacing: 0,
                crossAxisSpacing: 12),
            itemCount: colors.length,
            itemBuilder: (context, index) {
              final currColor = colors[index];
              return ColorCard(
                  onTap: () => onSelectNewColor(currColor),
                  color: currColor,
                  isSelected: currColor == selectedColor);
            }));
  }
}
