import 'package:flutter/material.dart';

import 'theme.dart';

class RecipeNameWidget extends StatelessWidget {
  const RecipeNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Creamy Pesto Pasta',
      style:
          Theme.of(context).textTheme.headline3!.copyWith(color: basilOrange),
      textAlign: TextAlign.center,
    );
  }
}
