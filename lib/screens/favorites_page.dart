import 'package:flutter/material.dart';
import 'package:recipe_app/components/my_bottom_navigation_bar.dart';
import 'package:recipe_app/components/popular_recipe_list.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.red,
          ),
        ),
        title: const Text(
          "Favorites",
          style: TextStyle(
              color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: PopularRecipeList(),
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
