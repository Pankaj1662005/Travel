import 'package:alpha/constants.dart';
import 'package:flutter/material.dart';

class Kolkata extends StatefulWidget {
  const Kolkata({Key? key}) : super(key: key);

  @override
  State<Kolkata> createState() => _KolkataState();
}

class _KolkataState extends State<Kolkata> {
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
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 450,
                              height: 450,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                // shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/kolkata.jpg'),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 2.0, top: 300.0),
                                    child: Text(
                                      'New Delhi',
                                      style: kImageText,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 2.0, top: 10.0),
                                    child: Text(
                                      'The capital city of India',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                            child: Container(
                                width: double.infinity,
                                height: 50.0,
                                color: kcontainerColor,
                                child: Row(
                                  children: [
                                    IconButton(
                                        icon: Icon(Icons.remove_red_eye),
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
                                        'Sights',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontFamily: 'Pacifico',
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 210.0),
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
                            color: Colors.white,
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
                                      icon: Icon(Icons.camera_alt),
                                      onPressed: () {},
                                      iconSize: 30,
                                      color: Colors.white70,
                                    ),
                                    AnimatedAlign(
                                      alignment: selected
                                          ? Alignment.centerRight
                                          : Alignment.centerLeft,
                                      duration: const Duration(seconds: 2),
                                      curve: Curves.slowMiddle,
                                      child: Text(
                                        'Things To Do',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontFamily: 'Pacifico',
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 150.0),
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
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Pacifico',
                                      color: Colors.black,
                                      fontSize: 40.0,
                                    )),
                              )),
                          Container(
                              height: 400,
                              child:
                              ListView(scrollDirection: Axis.horizontal, children: <
                                  Widget>[
                                Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: 350,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage('images/newdelhi1.jpg'),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: Image.asset(
                                              'images/newdelhi2.jpg',
                                              width: 50,
                                              height: 50,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Red Fort',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'A one stop for tourists',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: 350,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage('images/newdelhi3.jpg'),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: Image.asset(
                                              'images/newdelhi3.jpg',
                                              width: 50,
                                              height: 50,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Chotta Imambara',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'A one stop for tourists',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ])),
                                Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: 350,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage('images/tunday.jpeg'),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: Image.asset(
                                              'images/tunday.jpeg',
                                              width: 50,
                                              height: 50,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Tunday Kebabis',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'Selling kebabs since 1923',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: 350,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage('images/taj.webp'),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: Image.asset(
                                              'images/taj.webp',
                                              width: 50,
                                              height: 50,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Taj Hotel',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'Best hotel Chains...',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
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
