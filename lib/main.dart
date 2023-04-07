import 'screens/splash_screen.dart';
import 'package:alpha/screens/frontpage.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get initialRoute => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute:'splashScreen',
      routes:{

        'frontpage':(context)=> IntroPage(),
        'splashScreen' :(context) => splashScreen(),
      },


    );
  }
}

