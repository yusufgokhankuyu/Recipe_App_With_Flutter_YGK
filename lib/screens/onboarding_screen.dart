import 'package:flutter/material.dart';
import 'package:recipe_app/screens/homescreen.dart';
import 'package:recipe_app/screens/signin_page.dart';
import 'package:recipe_app/screens/signup_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // startTime() async {
  //   var _duration = const Duration(seconds: 3);
  //   return Timer(_duration, navigationPage);
  // }

  void navigationPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomeSreen(),
      ),
    );
  }

  // @override
  // void initState() {
  //   super.initState();
  //   startTime();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.5),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              height: 213,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/recipe_onboarding.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            const Text(
              'This Recipies for you',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF0E0E2D),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              'Find Popular Recipes in World',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff9A9DB0),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.5),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFf6925c),
                    Color(0xFFf37552),
                  ],
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.5),
                color: Colors.white,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: const Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
