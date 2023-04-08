import 'package:alpha/components/bottom_appBar.dart';
import 'package:alpha/components/drawers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:alpha/constants.dart';
import '../components/containers.dart';

class startingpage extends StatelessWidget {
  startingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
        backgroundColor: kstartingpagecolor,
      ),
      drawer: drawer1(),
      body: SingleChildScrollView(
        child: Container(
          decoration: kconatiner1theme,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                  child: Text(
                    'Recommended:-',
                    style: kRecommendTextStyle,
                  ),
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
                          print('2');
                        },
                        child: Stack(
                          children: [
                            Image(
                              image: AssetImage('images/1page.jpg'),
                              height: 240,
                              width: double.maxFinite,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 16,
                              right: 16,
                              left: 16,
                              child: Text(
                                'city',
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
                  )),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image(
                          image: AssetImage('images/1page.jpg'),
                          height: 240,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 16,
                          right: 16,
                          left: 16,
                          child: Text(
                            'city',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
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
                    Stack(
                      children: [
                        Image(
                          image: AssetImage('images/1page.jpg'),
                          height: 240,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 16,
                          right: 16,
                          left: 16,
                          child: Text(
                            'city',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
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
