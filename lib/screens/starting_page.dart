import 'package:alpha/components/bottom_appBar.dart';
import 'package:alpha/components/drawers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:alpha/constants.dart';
import '../components/containers.dart';

class startingpage extends StatelessWidget {
  startingpage({Key? key}) : super(key: key);
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldcolor,
      appBar: AppBar(
        title: Text('title'),
        backgroundColor: kstartingpagecolor,
      ),
      drawer: drawer1(),
      body: conatiner1(),
      bottomNavigationBar: bottomappBar(),
    );
  }
}
