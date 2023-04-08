import 'dart:async';

import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'frontpage');
    },);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393737),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/logo.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
