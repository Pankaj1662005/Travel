import 'package:alpha/constants.dart';
import 'package:alpha/screens/city_info.dart';
import 'package:flutter/material.dart';

class newdelhi extends StatefulWidget {
  const newdelhi({Key? key}) : super(key: key);

  @override
  State<newdelhi> createState() => _newdelhiState();
}

class _newdelhiState extends State<newdelhi> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: kscaffoldcolor,
            body: SingleChildScrollView(
                child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                  box2(
                    imagelocation: 'images/newdelhicard.jpg',
                    imageText: 'New Delhi',
                    imageDescription: 'The capital city of India',
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Container(
                        color: kcontainerColor,
                        width: double.infinity,
                        height: 50.0,
                        child: Row(
                          children: [
                            IconButton(
                                icon: Icon(Icons.add_business_outlined),
                                onPressed: () {},
                                iconSize: 30,
                                color: Colors.white70),
                            AnimatedAlign(
                              alignment: selected
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              duration: const Duration(seconds: 2),
                              curve: Curves.slowMiddle,
                              child: Text(
                                'Hotels',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'Pacifico',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 200.0),
                              child: IconButton(
                                  icon: Icon(Icons.arrow_forward_sharp),
                                  onPressed: () {},
                                  iconSize: 30,
                                  color: Colors.white70),
                            ),
                          ],
                        )),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black38,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: box(
                        icon1: Icons.add_home_work_outlined,
                        icon2: Icons.arrow_forward_outlined,
                        name: 'Home'),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: box(
                        icon1: Icons.remove_red_eye,
                        icon2: Icons.arrow_forward_outlined,
                        name: 'Sights'),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Container(
                      height: 117.0,
                      width: 450.0,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Top Plans',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Pacifico',
                              color: Colors.grey.shade800,
                              fontSize: 40.0,
                            )),
                      )),
                  Container(
                      height: 400,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            imagebox1(
                              imageLocation: 'images/newdelhi2.jpg',
                              imageName: 'Red Fort',
                              imageDescription: 'A one stop for tourists',
                            ),
                            imagebox1(
                              imageLocation: 'images/newdelhi2.jpg',
                              imageName: 'Red Fort',
                              imageDescription: 'A one stop for tourists',
                            ),
                            imagebox1(
                              imageLocation: 'images/newdelhi2.jpg',
                              imageName: 'Red Fort',
                              imageDescription: 'A one stop for tourists',
                            ),
                            imagebox1(
                              imageLocation: 'images/newdelhi2.jpg',
                              imageName: 'Red Fort',
                              imageDescription: 'A one stop for tourists',
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                height: 200.0,
                              ),
                            ),
                          ])),
                ])))));
  }
}
