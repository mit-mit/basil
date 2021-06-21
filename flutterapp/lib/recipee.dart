import 'package:flutter/material.dart';

const basilBackground = const Color(0xfffffbe6);
const basilGreen = const Color(0xff356859);
const basilLightGreen = const Color(0xfff1f5df);
const basilOlive = const Color(0xff37966f);
const basilOrange = const Color(0xfffd5523);

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Guilt-free gluten-free spaghetti pasta is sauted in garlic, and pesto. It\'s a easy and healhy dinner.',
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
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
          )
        ],
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
