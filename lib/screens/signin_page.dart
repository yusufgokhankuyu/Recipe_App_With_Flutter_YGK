import 'package:flutter/material.dart';
import 'package:recipe_app/services/auth_service.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Sign In Page"),
          Container(
            width: 300, // Dilediğiniz genişliği ayarlayabilirsiniz.
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      30.0), // Oval köşe için değeri ayarlayın
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300, // Dilediğiniz genişliği ayarlayabilirsiniz.
            child: TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      30.0), // Oval köşe için değeri ayarlayın
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                print(
                    "Email:${_emailController.text}\nPassword:${_passwordController.text}");
                AuthService().signIn(context,
                    email: _emailController.text,
                    password: _passwordController.text);
              },
              child: Text("Sign In"))
        ]),
      ),
    );
  }
}
