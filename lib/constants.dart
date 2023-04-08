import 'package:alpha/components/containers.dart';
import 'package:flutter/material.dart';

const kstartingpagecolor = Color(0xFF021221);
const kscaffoldcolor = Color(0xFf021221);
const kcontainerColor = Color(0xFF1D1E33);

const kRecommendTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: kcontainerColor,
);

const kImageText = TextStyle(
  color: Colors.white,
  fontSize: 50,
  fontWeight: FontWeight.w500,
);

const kconatiner1theme = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Colors.green,
      Colors.greenAccent,
      Colors.cyanAccent,
      Colors.cyan,
      Colors.lightBlueAccent,
      Colors.lightBlue,
      Colors.blue,
      Colors.blueAccent,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topLeft,
  ),
);

const kconatiner2theme = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Colors.deepPurpleAccent,
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.redAccent,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);
