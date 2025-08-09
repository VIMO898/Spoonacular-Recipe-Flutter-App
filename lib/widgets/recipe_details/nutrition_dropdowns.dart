import 'package:app/models/nutrition_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum NutritionOpenedDropDown { nutrients, goodNutrients, badNutrients }

class NutritionDropDowns extends StatelessWidget {
  final NutritionModel nutrient;
  const NutritionDropDowns({super.key, required this.nutrient});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildExpansionTile(
          context,
          title: 'Nutrients',
          expandedTiles: [
            _buildGeneralNutrientExpandedTile(
              context,
              title: 'Calories',
              amount: '${nutrient.calories}k',
              circularIcon: FontAwesomeIcons.fire,
            ),
            _buildGeneralNutrientExpandedTile(
              context,
              title: 'Fat',
              amount: nutrient.fat,
              circularIcon: FontAwesomeIcons.child,
            ),
            _buildGeneralNutrientExpandedTile(
              context,
              title: 'Carbohydrates',
              amount: nutrient.carbs,
              circularIcon: FontAwesomeIcons.cookieBite,
            ),
            _buildGeneralNutrientExpandedTile(
              context,
              title: 'Protein',
              amount: nutrient.protein,
              circularIcon: FontAwesomeIcons.bolt,
            ),
          ],
        ),
        _buildExpansionTile(
          context,
          title: 'Unhealthy Nutrients',
          expandedTiles: nutrient.bad.map((n) {
            return _buildNutrientExpandedTile(
              context,
              title: n.title,
              subtitle: '${n.percentOfDailyNeeds}% of Daily needs.',
              amount: n.amount,
            );
          }).toList(),
        ),
        _buildExpansionTile(
          context,
          title: 'Healthy Nutrients',
          expandedTiles: nutrient.good.map((n) {
            return _buildNutrientExpandedTile(
              context,
              title: n.title,
              subtitle: '${n.percentOfDailyNeeds}% of Daily needs.',
              amount: n.amount,
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildGeneralNutrientExpandedTile(
    BuildContext context, {
    required IconData circularIcon,
    required String title,
    required String amount,
  }) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(12),
          leading: CircleAvatar(
            backgroundColor: theme.appBarTheme.backgroundColor,
            radius: 30,
            child: Icon(circularIcon, color: theme.primaryColor, size: 30),
          ),
          title: Text(title, style: textTheme.titleSmall),
          trailing: Text(
            amount,
            style: textTheme.titleLarge!.copyWith(color: Colors.green),
          ),
        ),
        _buildDivider(),
      ],
    );
  }

  Widget _buildNutrientExpandedTile(
    BuildContext context, {
    required String title,
    required String subtitle,
    required String amount,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(12),
          title: Text(title, style: textTheme.titleSmall),
          subtitle: Text(subtitle),
          trailing: Text(
            amount,
            style: textTheme.titleLarge!.copyWith(color: Colors.green),
          ),
        ),
        _buildDivider(),
      ],
    );
  }

  Widget _buildExpansionTile(
    BuildContext context, {
    required String title,
    required List<Widget> expandedTiles,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: ExpansionTile(
        childrenPadding: const EdgeInsets.symmetric(horizontal: 12),
        title: Text(title, style: textTheme.titleLarge),
        children: expandedTiles,
      ),
    );
  }

  Widget _buildCircularAvatarNutrientTile(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Container(
      height: 65,
      margin: const EdgeInsets.only(bottom: 30),
      // color: Colors.yellow,
      padding: const EdgeInsets.only(left: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                radius: 30,
                child: Icon(
                  FontAwesomeIcons.fire,
                  color: theme.primaryColor,
                  size: 30,
                ),
              ),
              const SizedBox(width: 15),
              Text('Calories', style: textTheme.titleSmall),
              const Spacer(),
              Text(
                '427k',
                style: textTheme.titleLarge!.copyWith(color: Colors.green),
              ),
            ],
          ),
          _buildDivider(),
        ],
      ),
    );
  }

  SizedBox _buildTextNutrientTile() => SizedBox();

  Widget _buildDropDownTile(
    BuildContext context, {
    required String title,
    bool isOpen = false,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 45,
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: textTheme.titleLarge),
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Icon(isOpen ? Icons.expand_more : Icons.arrow_drop_down),
              ),
            ],
          ),
          _buildDivider(),
        ],
      ),
    );
  }

  Divider _buildDivider() => Divider(height: 0, color: Colors.grey.shade300);
}
