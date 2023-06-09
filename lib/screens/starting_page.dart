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
                height: 400,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 450,
                          height: 380,
                          decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('images/wine.jpg'),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 2.0, top: 280.0),
                                child: Text(
                                  'Lets plan your next vacation!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Trending ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
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
                            image: AssetImage('images/hyderabadCard.jpg'),
                            height: 240,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'Hyderabad',
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
                            image: AssetImage('images/AgraCard.webp'),
                            height: 240,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'Agra',
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
                            image: AssetImage('images/bangalore.jpg'),
                            height: 240,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'Bangalore',
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
                            image: AssetImage('images/ahemda.jpeg'),
                            height: 240,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'Ahemdabad',
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
                            image: AssetImage('images/pune.jpg'),
                            height: 240,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'Pune',
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
                            image: AssetImage('images/Roorkee.jpg'),
                            height: 240,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 16,
                            right: 16,
                            left: 16,
                            child: Text(
                              'Roorkee',
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomappBar(),
    );
  }
}
