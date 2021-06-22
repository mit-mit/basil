import 'package:flutter/material.dart';

import 'recipe_details.dart';
import 'recipe_name.dart';
import 'recipe_sheet.dart';

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
        body: Column(
          children: [
            SizedBox(height: 32),
            Stack(
              children: [
                RecipeDetailsWidget(),
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
