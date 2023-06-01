import 'package:awesome_app/pages/home_page.dart';
import 'package:awesome_app/pages/login_page.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.pref = await SharedPreferences.getInstance();

  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        themeAnimationDuration: const Duration(seconds: 15),
        themeAnimationCurve: Curves.bounceIn,
        title: "Awesome App",
        home: Constants.pref.getBool("LoggedIn") == true
            ? const HomePage()
            : LoginPage(),
        theme: ThemeData(primarySwatch: Colors.purple)),
  );
}
