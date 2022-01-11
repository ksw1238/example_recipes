import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "ALL"),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.food_bank, "Coffee"),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.food_bank, "Burger"),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.food_bank, "Pizza"),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData mIcon, String text){
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30,),
          SizedBox(height: 5,),
          Text(text, style: TextStyle( color: Colors.black87),)
        ],
      ),
    );
  }
}
