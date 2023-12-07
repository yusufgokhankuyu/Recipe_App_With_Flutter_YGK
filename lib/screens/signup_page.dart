import 'package:flutter/material.dart';
import 'package:recipe_app/screens/welcome_page.dart';
import 'package:recipe_app/services/auth_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            buildTextField("Enter your name", _nameController, "Name"),
            SizedBox(height: 10),
            buildTextField("Enter your email", _emailController, "Email"),
            SizedBox(height: 10),
            buildTextField(
                "Enter your password", _passwordController, "Password"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(
                    "Name:${_nameController.text}\nEmail:${_emailController.text}\nPassword:${_passwordController.text}");
                AuthService().signUp(
                  context,
                  email: _emailController.text,
                  name: _nameController.text,
                  password: _passwordController.text,
                );
              },
              child: Text("Sign Up"),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.redAccent,
              ),
            ),
            SizedBox(height: 20),
            const Text("or", style: TextStyle(color: Colors.white)),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                AuthService().signInWithGoogle().then(
                    (value) => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WelcomePage(),
                          settings: RouteSettings(arguments: value),
                        )));
              },
              child: Image.asset(
                "assets/images/googleSignIn.png",
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
      String hintText, TextEditingController controller, String labelText) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        cursorColor: Colors.redAccent,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.redAccent),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }
}
