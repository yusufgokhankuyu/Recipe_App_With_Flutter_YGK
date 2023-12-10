import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/components/big_user_card.dart';
import 'package:recipe_app/components/icon_styles.dart';
import 'package:recipe_app/components/my_bottom_navigation_bar.dart';
import 'package:recipe_app/components/settings_group.dart';
import 'package:recipe_app/components/settings_item.dart';
import 'package:recipe_app/screens/about_page.dart';
import 'package:recipe_app/screens/onboarding_screen.dart';
import 'package:recipe_app/services/variable_service.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(.94),
        appBar: AppBar(
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
            "Settings",
            style: TextStyle(
                color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              // user card
              BigUserCard(
                userName: "${Provider.of<VariableService>(context).userName}",
                userProfilePic: const AssetImage("assets/profilephoto.jpg"),
                userMoreInfo: Text(
                  "${Provider.of<VariableService>(context).userEmail}",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.pencil_outline,
                    iconStyle: IconStyle(),
                    title: 'Appearance',
                    // subtitle:
                    //     "Make Recipe App yours Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance Appearance",
                    titleMaxLine: 1,
                    subtitleMaxLine: 1,
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.fingerprint,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.red,
                    ),
                    title: 'Privacy Policy',
                    // subtitle: "Lock Recipe App to improve your privacy",
                  ),
                  // SettingsItem(
                  //   onTap: () {},
                  //   icons: Icons.dark_mode_rounded,
                  //   iconStyle: IconStyle(
                  //     iconsColor: Colors.white,
                  //     withBackground: true,
                  //     backgroundColor: Colors.red,
                  //   ),
                  //   title: 'Dark mode',
                  //   subtitle: "Automatic",
                  //   trailing: Switch.adaptive(
                  //     value: false,
                  //     onChanged: (value) {},
                  //   ),
                  // ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutPage()));
                    },
                    icons: Icons.info_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.purple,
                    ),
                    title: 'About',
                    subtitle: "Learn more about Recipe'App",
                  ),
                ],
              ),
              // You can add a settings title
              SettingsGroup(
                settingsGroupTitle: "Account",
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnboardingScreen()));
                    },
                    icons: Icons.exit_to_app_rounded,
                    title: "Sign Out",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.repeat,
                    title: "Change email",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.delete_solid,
                    title: "Delete account",
                    titleStyle: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const MyBottomNavigationBar(),
      ),
    );
  }
}
