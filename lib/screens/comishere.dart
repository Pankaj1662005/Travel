import 'package:flutter/material.dart';
import 'com.dart';

import 'home_page.dart';
int j=0;
MyCom jeet =MyCom();
class Jeet extends StatefulWidget {
  const Jeet({Key? key}) : super(key: key);

  @override
  State<Jeet> createState() => _JeetState();
}

class _JeetState extends State<Jeet> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:Text(
            'Reviews',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body:Stack(
            children:[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/back.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),



              Container(
                  child:
                  Column(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(left:15,top:30.0),
                        child: Text(
                          myList[0],

                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height:20.0,
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left:15),
                        child: Text(
                          myList[1],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      )  ,
                      SizedBox(
                        height:20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15),
                        child: Text(
                          myList[2],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      )   ,
                      SizedBox(
                        height:20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15),
                        child: Text(
                          myList[3],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      )   ,

                    ],
                  )
              ),


            ] )
    );
  }
}
