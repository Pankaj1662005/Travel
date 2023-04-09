import 'package:alpha/constants.dart';
import 'package:flutter/material.dart';

class chandigarh extends StatefulWidget {
  const chandigarh({Key? key}) : super(key: key);

  @override
  State<chandigarh> createState() => _chandigarhState();
}

class _chandigarhState extends State<chandigarh> {
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
                                  image: AssetImage('images/chandigarh1.jpg'),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 2.0, top: 300.0),
                                    child: Text(
                                      'Chandigarh',
                                      style: kImageText,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 2.0, top: 10.0),
                                    child: Text(
                                      'The Beautiful city of India',
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
                                              image: AssetImage('images/sukhna.jpg'),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: Image.asset(
                                              'images/sukhna.jpg',
                                              width: 50,
                                              height: 50,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Sukhna lake',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'lake for tourists',
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
                                              image: AssetImage('images/japan.jpg'),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: Image.asset(
                                              'images/japan.jpg',
                                              width: 50,
                                              height: 50,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Japnese Garden',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'garden for you',
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
                                              image: AssetImage('images/kulcha.jpg'),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: Image.asset(
                                              'images/kulcha.jpg',
                                              width: 50,
                                              height: 50,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Chole kulche',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'A delicious dish since 1897',
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
                                              image: AssetImage('images/jw.jpg'),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: Image.asset(
                                              'images/jw.jpg',
                                              width: 50,
                                              height: 50,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'JW Marriot',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        'THe hotel Chains...',
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
