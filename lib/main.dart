import 'package:awesome_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        themeAnimationDuration: const Duration(seconds: 15),
        themeAnimationCurve: Curves.bounceIn,
        title: "Awesome App",
        home: const HomePage(),
        theme: ThemeData(primarySwatch: Colors.purple)),
  );
}
