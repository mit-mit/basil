import 'package:flutter/material.dart';

const basilBackground = const Color(0xfffffbe6);
const basilGreen = const Color(0xff356859);
const basilLightGreen = const Color(0xfff1f5df);
const basilOlive = const Color(0xff37966f);
const basilOrange = const Color(0xfffd5523);

class RecipeWidget extends StatefulWidget {
  const RecipeWidget({Key? key}) : super(key: key);

  @override
  _RecipeWidgetState createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  var showBottomTabs = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(height: 32),
            Stack(
              children: [
                RecipeDescriptionWidget(),
                RecipeNameWidget(),
              ],
            ),
          ],
        ),
        bottomSheet: showBottomTabs
            ? RecipeSheet(
                collapsed: true,
                onTap: () {
                  setState(() {
                    showBottomTabs = false;
                  });
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: ((BuildContext context) {
                      return RecipeSheet(collapsed: false);
                    }),
                  );
                  setState(() {
                    showBottomTabs = true;
                  });
                },
              )
            : null,
      ),
    );
  }
}

class RecipeNameWidget extends StatelessWidget {
  const RecipeNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Creamy Pesto Pasta',
      style:
          Theme.of(context).textTheme.headline2!.copyWith(color: basilOrange),
      textAlign: TextAlign.center,
    );
  }
}

class RecipeDescriptionWidget extends StatelessWidget {
  const RecipeDescriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(32, 64, 32, 0),
      alignment: Alignment.center,
      child: Column(
        children: [
          // Desscription.
          ColoredBox(
            color: basilLightGreen,
            child: Column(
              children: [
                SizedBox(height: 96),
                Divider(
                  thickness: 1,
                  color: basilGreen,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Guilt-free gluten-free spaghetti pasta is sauted in garlic, and pesto. It\'s a easy and healthy dinner.',
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),

          // Nutrients,
          SizedBox(
            height: 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Calories',
                        style: Theme.of(context).textTheme.subtitle2),
                    Text('465g', style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),
                VerticalDivider(width: 64, thickness: .25, color: basilGreen),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Protein',
                        style: Theme.of(context).textTheme.subtitle2),
                    Text('27g', style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),
                VerticalDivider(width: 64, thickness: .25, color: basilGreen),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Fat', style: Theme.of(context).textTheme.subtitle2),
                    Text('12g', style: Theme.of(context).textTheme.subtitle1),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1,
              color: basilGreen,
            ),
          ),

          // Allergens.
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/icons/no-gluten.png')),
              SizedBox(width: 16),
              Text('Gluten-free', style: Theme.of(context).textTheme.subtitle1),
              SizedBox(width: 32),
              Image(image: AssetImage('assets/icons/no-egg.png')),
              SizedBox(width: 16),
              Text('Egg Free', style: Theme.of(context).textTheme.subtitle1)
            ],
          ),
        ],
      ),
    );
  }
}

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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 64, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Chop the Pesto',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Place the basil leaves, garlic and pine nuts on a sturdy cutting board.',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
