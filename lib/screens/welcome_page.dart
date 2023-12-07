import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/screens/homescreen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final User? user = ModalRoute.of(context)?.settings.arguments as User?;
    return Scaffold(
      body: Center(
          child: user == null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("User not found"),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeSreen()));
                        },
                        child: Text("Home Screen"))
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Text(user.displayName!),
                      subtitle: Text(user.email!),
                      leading: CircleAvatar(
                        child: Image.network(user.photoURL!),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeSreen()));
                        },
                        child: Text("Home Screen"))
                  ],
                )),
    );
  }
}
