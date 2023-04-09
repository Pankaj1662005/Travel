import 'package:alpha/components/bottom_appBar.dart';
import 'package:alpha/components/drawers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:alpha/constants.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../components/containers.dart';

class startingpage extends StatefulWidget {
  startingpage({Key? key}) : super(key: key);

  @override
  State<startingpage> createState() => _startingpageState();
}

class _startingpageState extends State<startingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldcolor,
      appBar: AppBar(
        title: Text('Locations'),
        backgroundColor: kstartingpagecolor,
      ),
      drawer: drawer1(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(color: Colors.white),
                child: Text(
                  'Recommended:-',
                  style: kRecommendTextStyle,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    InkWell(
                      splashColor: Colors.blueGrey,
                      onTap: () {
                        Navigator.pushNamed(context, 'lucknow');
                      },
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('images/lucknowcard.jpg'),
                            height: 240,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'Lucknow',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    InkWell(
                      splashColor: Colors.blueGrey,
                      onTap: () {
                        Navigator.pushNamed(context, 'newdelhi');
                      },
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('images/newdelhicard.jpg'),
                            height: 240,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'New Delhi',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    InkWell(
                      splashColor: Colors.blueGrey,
                      onTap: () {
                        Navigator.pushNamed(context, 'chandigarh');
                      },
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('images/chandigarh1.jpg'),
                            height: 240,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'Chandigarh',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    InkWell(
                      splashColor: Colors.blueGrey,
                      onTap: () {
                        Navigator.pushNamed(context, 'kolkata');
                      },
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('images/kolkata.jpg'),
                            height: 240,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'Kolkata',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomappBar(),
    );
  }
}
