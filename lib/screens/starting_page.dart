import 'package:alpha/components/bottom_appBar.dart';
import 'package:alpha/components/drawers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:alpha/constants.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
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
        leading:IconButton(onPressed:(){  if (ZoomDrawer.of(context)!.isOpen()){
      ZoomDrawer.of(context)!.close();
     } else{
         ZoomDrawer.of(context)!.open();
         }
         },
          icon: Icon(Icons.import_contacts_sharp),),),
      drawer: drawer1(),
      body: conatiner1(),
      bottomNavigationBar: bottomappBar(),
    );
  }
}
