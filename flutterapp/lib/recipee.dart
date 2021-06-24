import 'package:flutter/material.dart';

import 'recipe_details.dart';
import 'recipe_name.dart';
import 'recipe_sheet.dart';

class RecipeMainWidget extends StatelessWidget {
  const RecipeMainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32),
        Stack(
          children: [
            RecipeDetailsWidget(),
            RecipeNameWidget(),
          ],
        ),
      ],
    );
  }
}

// Mobile layout: Has the main widget and the ingredients in a bottom sheet.
class RecipeNarrowWidget extends StatefulWidget {
  const RecipeNarrowWidget({Key? key}) : super(key: key);

  @override
  _RecipeNarrowWidgetState createState() => _RecipeNarrowWidgetState();
}

class _RecipeNarrowWidgetState extends State<RecipeNarrowWidget> {
  var showBottomTabs = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: RecipeMainWidget(),
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

// Desktop layout: Has the main widget on the left and and the ingredients on the right.
class RecipeWideWidget extends StatelessWidget {
  const RecipeWideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(flex: 1, child: RecipeMainWidget()),
          Flexible(flex: 1, child: RecipeSheet(collapsed: false))
        ],
      ),
    );
  }
}

// Pick layout based on screen width.
class RecipeWidget extends StatelessWidget {
  const RecipeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: screenSize.width < 600 ? RecipeNarrowWidget() : RecipeWideWidget(),
    );
  }
}
