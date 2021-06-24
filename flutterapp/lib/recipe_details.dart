import 'package:flutter/material.dart';

import 'theme.dart';

class RecipeDetailsWidget extends StatelessWidget {
  const RecipeDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(32, 64, 32, 0),
      child: Column(
        children: [
          // Description.
          RecipeDescriptionWidget(),
          SizedBox(height: 8),

          // Nutrients,
          RecipeNutrientsWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1,
              color: basilGreen,
            ),
          ),

          // Allergens.
          RecipeAllergensWidget(),
        ],
      ),
    );
  }
}

class RecipeDescriptionWidget extends StatelessWidget {
  const RecipeDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ColoredBox(
      color: basilLightGreen,
      child: Column(
        children: [
          SizedBox(height: 60),
          Divider(
            thickness: 1,
            color: basilOlive,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
            child: Text(
              'Guilt-free gluten-free spaghetti pasta is sauted in garlic, and pesto. It\'s a easy and healthy dinner.',
              style: textTheme.subtitle1!.copyWith(height: 1.5, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class RecipeNutrientsWidget extends StatelessWidget {
  const RecipeNutrientsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Calories', style: textTheme.subtitle2),
              Text('465g', style: textTheme.subtitle1),
            ],
          ),
          VerticalDivider(width: 32, thickness: .25, color: basilGreen),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Protein', style: textTheme.subtitle2),
              Text('27g', style: textTheme.subtitle1),
            ],
          ),
          VerticalDivider(width: 32, thickness: .25, color: basilGreen),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Fat', style: textTheme.subtitle2),
              Text('12g', style: textTheme.subtitle1),
            ],
          ),
        ],
      ),
    );
  }
}

class RecipeAllergensWidget extends StatelessWidget {
  const RecipeAllergensWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage('assets/icons/no-gluten.png')),
        SizedBox(width: 4),
        Text('Gluten-free',
            style: textTheme.subtitle2!.copyWith(fontWeight: FontWeight.bold)),
        SizedBox(width: 16),
        Image(image: AssetImage('assets/icons/no-egg.png')),
        SizedBox(width: 4),
        Text('Egg Free',
            style: textTheme.subtitle2!.copyWith(fontWeight: FontWeight.bold))
      ],
    );
  }
}
