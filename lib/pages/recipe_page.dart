import 'package:flutter/material.dart';
import 'package:example_recipes/components/recipe_list_item.dart';
import 'package:example_recipes/components/recipe_menu.dart';
import 'package:example_recipes/components/recipe_title.dart';
import 'package:flutter/cupertino.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildingRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem('coffee', 'Made Coffee'),
            RecipeListItem('burger', 'Made Burger'),
            RecipeListItem('pizza', 'Made Pizza'),
          ],
        ),
      ),
    );
  }

  AppBar _buildingRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(width: 15.0,),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15.0,)
      ],
    );
  }
}
