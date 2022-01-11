import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes_page',
      home: Recipes_Page(),
    );
  }
}

class Recipes_Page extends StatelessWidget {
  const Recipes_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.search_outlined, color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.favorite_outline, color: Colors.red,),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Recipes', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),
          ),
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 61,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Column(

                      children: [
                        Icon(Icons.breakfast_dining, color: Colors.red,),
                        SizedBox(height: 5,),
                        Text('ALL', style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 61,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Column(

                      children: [
                        Icon(Icons.coffee, color: Colors.red,),
                        SizedBox(height: 5,),
                        Text('Coffee', style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 61,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Column(

                      children: [
                        Icon(Icons.lunch_dining, color: Colors.red,),
                        SizedBox(height: 5,),
                        Text('Burger', style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 61,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Column(

                      children: [
                        Icon(Icons.local_pizza, color: Colors.red,),
                        SizedBox(height: 5,),
                        Text('Pizza', style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Image.asset('images/coffee.jpeg'),
                  borderRadius: BorderRadius.circular(20),
                ),
                SizedBox(height: 10,),
                Text('Made Coffee', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text('Have you ever made your own Made Coffee? Once you''ve tried a homemade Made Coffee, you''ll never go back', style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Image.asset('images/burger.jpeg'),
                  borderRadius: BorderRadius.circular(20),
                ),
                SizedBox(height: 10,),
                Text('Made Burger', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text('Have you ever made your own Made Burger? Once you''ve tried a homemade Made Burger, you''ll never go back', style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Image.asset('images/pizza.jpeg'),
                  borderRadius: BorderRadius.circular(20),
                ),
                SizedBox(height: 10,),
                Text('Made Pizza', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text('Have you ever made your own Made Pizza? Once you''ve tried a homemade Made Pizza, you''ll never go back', style: TextStyle(color: Colors.grey),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
