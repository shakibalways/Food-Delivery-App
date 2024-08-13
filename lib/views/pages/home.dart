import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "images/bloody-mary-cocktail-with-lemon-green-olives-tomato-sauce.jpg",
            height: 200,
            width: 200,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
