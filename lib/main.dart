import 'package:alpha/screens/chandigarh.dart';
import 'package:alpha/screens/delhi.dart';
import 'package:alpha/screens/info.dart';
import 'package:alpha/screens/kolkata.dart';
import 'package:alpha/screens/lucknow.dart';
import 'package:alpha/screens/search%20page.dart';
import 'package:alpha/screens/starting_page.dart';
import 'screens/splash_screen.dart';
import 'package:alpha/screens/frontpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get initialRoute => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashScreen',
      routes: {
        'startingpage': (context) => startingpage(),
        'frontpage': (context) => IntroPage(),
        'splashScreen': (context) => splashScreen(),
        'info': (context) => homepage(),
        'lucknow': (context) => lucknow(),
        'newdelhi': (context) => newdelhi(),
        'search page': (context) => SearchBarScreen(),
        'chandigarh': (context) => chandigarh(),
        'kolkata': (context) => Kolkata(),
      },
    );
  }
}
