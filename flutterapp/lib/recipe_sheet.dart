import 'package:flutter/material.dart';

import 'theme.dart';

class RecipeSheet extends StatelessWidget {
  final bool collapsed;
  final VoidCallback? onTap;

  RecipeSheet({required this.collapsed, this.onTap});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      for (var label in ['INGREDIENTS ', 'STEPS'])
        Tab(
          icon: Text(label, style: Theme.of(context).textTheme.subtitle1),
        ),
    ];

    return DefaultTabController(
      length: 2,
      child: collapsed
          ? Container(
              decoration: BoxDecoration(
                color: basilBackground,
                border:
                    Border(top: BorderSide(color: basilLightGreen, width: 2)),
              ),
              child: TabBar(
                tabs: tabs,
                indicatorColor: Colors.transparent,
                onTap: (_) {
                  onTap?.call();
                },
              ),
            )
          : Container(
              color: basilBackground.withOpacity(0.5),
              // Tried SafeArea here, but that doesn't seem to work!?
              child: Padding(
                padding:
                    EdgeInsets.fromLTRB(0, AppBar().preferredSize.height, 0, 0),
                child: Column(
                  children: [
                    TabBar(
                      tabs: tabs,
                      indicatorColor: basilGreen,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [RecipeIngredients(), RecipeSteps()],
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class Ingredient {
  String name;
  String amount;
  Ingredient(this.name, this.amount);
}

class RecipeIngredients extends StatelessWidget {
  const RecipeIngredients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ingredients = [
      Ingredient('Basil', '6 tbsp'),
      Ingredient('Gluten-free spaghetti', '2 cups'),
      Ingredient('Garlic', '1 tbsp'),
      Ingredient('Ricotta', '4 cups'),
      Ingredient('Kale', '3 cups'),
      Ingredient('Red Pepper Flakes', '1 tbsp'),
      Ingredient('Extra Virgin Olive Oil', '1 tbsp'),
      Ingredient('Salt', '1 tbsp'),
      Ingredient('Pine Nuts', '2 tbsp'),
    ];

    return Container(
      color: Colors.transparent,
      child: Column(children: [
        for (var ingredient in ingredients)
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
            child: Row(
              children: [
                SizedBox(width: 16),
                Icon(
                  Icons.add_circle_outline,
                  color: basilGreen,
                ),
                SizedBox(width: 16),
                Expanded(child: Text(ingredient.name)),
                SizedBox(width: 16),
                Text(ingredient.amount),
                SizedBox(width: 16),
              ],
            ),
          )
      ]),
    );
  }
}

class RecipeSteps extends StatelessWidget {
  const RecipeSteps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 64, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Chop the Pesto',
            style: textTheme.headline6,
          ),
          Text(
            'Place the basil leaves, garlic and pine nuts on a sturdy cutting board.',
            style: textTheme.headline6!.copyWith(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
