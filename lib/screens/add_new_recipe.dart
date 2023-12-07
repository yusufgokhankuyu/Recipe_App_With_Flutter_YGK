import 'package:flutter/material.dart';
import 'package:recipe_app/components/my_bottom_navigation_bar.dart';

class AddNewRecipe extends StatefulWidget {
  const AddNewRecipe({super.key});

  @override
  State<AddNewRecipe> createState() => _AddNewRecipeState();
}

class _AddNewRecipeState extends State<AddNewRecipe> {
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
          "Add New Recipe",
          style: TextStyle(
              color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.post_add_outlined),
            ),
            const Text("Add New Recipe "),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
